# moduleIsTorsionFree

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:908b9e03-0f0e-95a3-5c14-e3ea621f3699",
  "kind": "lemma",
  "lexical_name": "moduleIsTorsionFree",
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
  "slug": "moduleistorsionfree--fb5e189080894f0eb1a85d7f",
  "source": {
    "blob": "e238596992b86380f2eac65e56c460979257539f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 84,
    "path": "GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fb5e189080894f0eb1a85d7f4cbff50a22869c300c0e2f9054709040259bfcfd",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:908b9e03-0f0e-95a3-5c14-e3ea621f3699`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected lemma moduleIsTorsionFree [Module.IsTorsionFree R β] :
    letI := e.module R
    Module.IsTorsionFree R α :=
  letI := e.module R
  (e.linearEquiv R).injective.moduleIsTorsionFree _ (by simp)

end AddEquiv

@[deprecated (since := "2026-08-10")] alias Equiv.module := AddEquiv.module
@[deprecated (since := "2026-08-10")] alias Equiv.linearEquiv := AddEquiv.linearEquiv
@[deprecated (since := "2026-08-10")] alias Equiv.linearEquiv_apply := AddEquiv.linearEquiv_apply
@[deprecated (since := "2026-08-10")]
alias Equiv.linearEquiv_symm_apply := AddEquiv.linearEquiv_symm_apply
@[deprecated (since := "2026-08-10")]
alias Equiv.moduleIsTorsionFree := AddEquiv.moduleIsTorsionFree

variable [Module R α] (A : Type*) [Semiring A] [Module R A] [Module A β]

/-- The module instance from `AddEquiv.module` is compatible with the `R`-module structures,
if the `AddEquiv` is induced by an `R`-module isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/TransferInstance/Variant0591f843809929f4782fa95ca865a601ed61edd33bb57b1c95d0f567c39461ec.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e238596992b86380f2eac65e56c460979257539f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
