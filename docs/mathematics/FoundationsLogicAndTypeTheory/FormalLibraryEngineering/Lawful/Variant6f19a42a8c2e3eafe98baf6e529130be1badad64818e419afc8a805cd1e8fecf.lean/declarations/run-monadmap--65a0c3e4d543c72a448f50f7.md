# run_monadMap

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6628627a-3cb8-f817-aa9e-6a607978fff1",
  "kind": "theorem",
  "lexical_name": "run_monadMap",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "run-monadmap--65a0c3e4d543c72a448f50f7",
  "source": {
    "blob": "0b03db4b533f2ca1895ac660949ad2b031d0287c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 95,
    "line": 69,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:65a0c3e4d543c72a448f50f7c54b168927b4c7d5cdeda5283db3c847197b7ee8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6628627a-3cb8-f817-aa9e-6a607978fff1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 69–95.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem run_monadMap {n} [MonadFunctorT n m] (f : ∀ {α}, n α → n α) :
    (monadMap (@f) x : ExceptT ε m α).run = monadMap (@f) x.run :=
  rfl

end ExceptT

namespace ReaderT

section

variable {m : Type u → Type v}
variable {α σ : Type u}

/-
Porting note:
In Lean 4, `ReaderT` doesn't require a constructor, but it appears confusing to declare the
following theorem as a simp theorem.
```lean
@[simp]
theorem run_fun (f : σ → m α) (r : σ) : ReaderT.run (fun r' => f r') r = f r :=
  rfl
```
If we declare this theorem as a simp theorem, `ReaderT.run f st` is simplified to `f st` by eta
reduction. This breaks the structure of `ReaderT`.
So, we declare a constructor-like definition `ReaderT.mk` and a simp theorem for it.
-/

````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Lawful/Variant6f19a42a8c2e3eafe98baf6e529130be1badad64818e419afc8a805cd1e8fecf.lean#L69).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b03db4b533f2ca1895ac660949ad2b031d0287c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
