# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lift.Variant26b599a781f6945699986a22d9b1c6bbfe97656f4d25b271d41b0f400afc34c1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c9820eab61376c6a1a156be7dbbc729e5fde38a` · SHA-256 `340c1df10917a175225ab0647fdf8e89aa00d12884e5f7137e863634e659ada2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IO.Variantbe113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.MathematicalTooling.SourceEnvironments.SourceCorpus.IO.Variantbe113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597","mathematical_subject":"MathematicalTooling.SourceEnvironments","original_sha256":"be113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/lake/Lake/Util/Lift.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Mac Malone. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mac Malone
-/
module

prelude
public import Init.System.IO


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.IO.Variantbe113a40b31cb419e66858172657111df3624f0aacf33c06337078116b1d4597

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
