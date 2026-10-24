# balancedCore_eq_iInter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:402766fe-191c-f62c-eabd-89ebb015df2d",
  "kind": "theorem",
  "lexical_name": "balancedCore_eq_iInter",
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
  "slug": "balancedcore-eq-iinter--8c2034e3e24a2250cbb86088",
  "source": {
    "blob": "4db886eff2ee725b7de73d623bbec457fd9c3338",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 212,
    "line": 206,
    "path": "GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8c2034e3e24a2250cbb8608836fd0836cc4dd417006e47e0e31a05872c34ae0d",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:402766fe-191c-f62c-eabd-89ebb015df2d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 206–212.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balancedCore_eq_iInter (hs : (0 : E) ∈ s) :
    balancedCore 𝕜 s = ⋂ (r : 𝕜) (_ : 1 ≤ ‖r‖), r • s := by
  refine' balancedCore_subset_balancedCoreAux.antisymm _
  refine' (balancedCoreAux_balanced _).subset_balancedCore_of_subset (balancedCoreAux_subset s)
  exact balancedCore_subset_balancedCoreAux (balancedCore_zero_mem hs)
#align balanced_core_eq_Inter balancedCore_eq_iInter

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/BalancedCoreHull/Variantbad95ea78f223814d577fbab0e6978380294dd2b07f0c67cd238ff91bc979759.lean#L206).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4db886eff2ee725b7de73d623bbec457fd9c3338` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
