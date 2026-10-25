# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variantbe113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c90a73c09abb6e4d274796aebf969bf0dd0dce42` · SHA-256 `be113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO

namespace Lake

public instance (priority := low) [Monad m] [MonadExceptOf PUnit m] : Alternative m where
  failure := throw ()
  orElse := tryCatch

/-- Ensure direct lifts are preferred over indirect ones. -/
public instance (priority := high) [MonadLift α β] : MonadLiftT α β := ⟨MonadLift.monadLift⟩

public instance (priority := low) [Pure m] : MonadLiftT Id m where
  monadLift act := pure act.run

public instance (priority := low) [Alternative m] : MonadLiftT Option m where
  monadLift
    | some a => pure a
    | none => failure

public instance (priority := low) [Pure m] [MonadExceptOf ε m] : MonadLiftT (Except ε) m where
  monadLift
    | .ok a => pure a
    | .error e => throw e

-- Remark: not necessarily optimal; uses context non-linearly
public instance (priority := low) [Monad m] [MonadReaderOf ρ m] [MonadLiftT n m] : MonadLiftT (ReaderT ρ n) m where
  monadLift act := do act.run (← read)

-- Remark: not necessarily optimal; uses state non-linearly
public instance (priority := low) [Monad m] [MonadStateOf σ m] [MonadLiftT n m] : MonadLiftT (StateT σ n) m where
  monadLift act := do let (a, s) ← act.run (m := n) (← get); set s; pure a

public instance (priority := low) [Monad m] [Alternative m] [MonadLiftT n m] : MonadLiftT (OptionT n) m where
  monadLift act := act.run >>= liftM

public instance (priority := low) [Monad m] [MonadExceptOf ε m] [MonadLiftT n m] : MonadLiftT (ExceptT ε n) m where
  monadLift act := act.run >>= liftM

public instance (priority := low) [Monad m] [MonadExceptOf ε m] [MonadLiftT BaseIO m] : MonadLiftT (EIO ε) m where
  monadLift act := act.toBaseIO >>= liftM
```
