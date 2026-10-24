# fundamentalDomain_bounded

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:82afae05-dde8-8dd7-5bda-33c0d3b8217d",
  "kind": "theorem",
  "lexical_name": "fundamentalDomain_bounded",
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
  "slug": "fundamentaldomain-bounded--3c82c9be3be3a53e9bede0cb",
  "source": {
    "blob": "690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 225,
    "path": "GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3c82c9be3be3a53e9bede0cbdeb01a2d43c45ca76daba674385c9f4f4f80aac4",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:82afae05-dde8-8dd7-5bda-33c0d3b8217d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 225–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fundamentalDomain_bounded [Finite ι] [HasSolidNorm K] :
    Metric.Bounded (fundamentalDomain b) := by
  cases nonempty_fintype ι
  use 2 * ∑ j, ‖b j‖
  intro x hx y hy
  refine le_trans (dist_le_norm_add_norm x y) ?_
  rw [← fract_eq_self.mpr hx, ← fract_eq_self.mpr hy]
  refine (add_le_add (norm_fract_le b x) (norm_fract_le b y)).trans ?_
  rw [← two_mul]
#align zspan.fundamental_domain_bounded Zspan.fundamentalDomain_bounded

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Zlattice/Variant2ea68f0ee73f98440125ebf61f125222e2e25751b4fc13dba2b3cdd994eea133.lean#L225).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `690a294caa9cbc3b7d59aa8d6edc6ba1334a27e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
