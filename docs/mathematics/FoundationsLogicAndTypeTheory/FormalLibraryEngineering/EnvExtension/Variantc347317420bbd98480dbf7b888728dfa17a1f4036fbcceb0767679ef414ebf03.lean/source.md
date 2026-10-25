# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.EnvExtension.Variantc347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ca1adad43b48cc1b35fa1b946182e9caf1ecf29` · SHA-256 `c347317420bbd98480dbf7b888728dfa17a1f4036fbcceb0767679ef414ebf03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Floris van Doorn. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Floris van Doorn
-/
import Mathlib.Init
import Lean.ScopedEnvExtension

/-!
# Helper function for environment extensions and attributes.
-/

open Lean

instance {σ : Type} [Inhabited σ] : Inhabited (ScopedEnvExtension.State σ) := ⟨{state := default}⟩
```
