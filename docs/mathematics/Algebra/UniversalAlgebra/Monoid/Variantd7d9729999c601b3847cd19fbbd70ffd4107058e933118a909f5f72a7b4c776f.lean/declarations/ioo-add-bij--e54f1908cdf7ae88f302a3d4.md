# Ioo_add_bij

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:41303cae-983b-916c-5739-d4738bfbf607",
  "kind": "theorem",
  "lexical_name": "Ioo_add_bij",
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
  "slug": "ioo-add-bij--e54f1908cdf7ae88f302a3d4",
  "source": {
    "blob": "1066e06513fdf8d8f2e0eaa21f3f54e73fd965bb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 60,
    "path": "GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e54f1908cdf7ae88f302a3d464b7ddd42d84f2de3f34b3a8dc92c183f37f8a6d",
  "verification": {
    "reference": "docs/verification/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:41303cae-983b-916c-5739-d4738bfbf607`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Ioo_add_bij : BijOn (· + d) (Ioo a b) (Ioo (a + d) (b + d)) := by
  rw [← Ioi_inter_Iio, ← Ioi_inter_Iio]
  exact
    (Ioi_add_bij a d).inter_mapsTo (fun x hx => add_lt_add_right hx _) fun x hx =>
      lt_of_add_lt_add_right hx.2
#align set.Ioo_add_bij Set.Ioo_add_bij

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/UniversalAlgebra/Monoid/Variantd7d9729999c601b3847cd19fbbd70ffd4107058e933118a909f5f72a7b4c776f.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1066e06513fdf8d8f2e0eaa21f3f54e73fd965bb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
