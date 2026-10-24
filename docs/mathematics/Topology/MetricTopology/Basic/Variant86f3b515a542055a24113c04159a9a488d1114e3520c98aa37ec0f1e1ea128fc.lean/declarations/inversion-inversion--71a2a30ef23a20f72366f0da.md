# inversion_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1bd13455-5da7-6f81-738e-a87a26f88351",
  "kind": "theorem",
  "lexical_name": "inversion_inversion",
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
  "slug": "inversion-inversion--71a2a30ef23a20f72366f0da",
  "source": {
    "blob": "29906d71d40aff862123d44634945ae14980abe2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 115,
    "path": "GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:71a2a30ef23a20f72366f0da79ec02a1b4fc43631076c92eb138cfbd5c0ad455",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bd13455-5da7-6f81-738e-a87a26f88351`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inversion_inversion (c : P) {R : ℝ} (hR : R ≠ 0) (x : P) :
    inversion c R (inversion c R x) = x := by
  rcases eq_or_ne x c with (rfl | hne)
  · rw [inversion_self, inversion_self]
  · rw [inversion, dist_inversion_center, inversion_vsub_center, smul_smul, ← mul_pow,
      div_mul_div_comm, div_mul_cancel₀ _ (dist_ne_zero.2 hne), ← sq, div_self, one_pow, one_smul,
      vsub_vadd]
    exact pow_ne_zero _ hR

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Basic/Variant86f3b515a542055a24113c04159a9a488d1114e3520c98aa37ec0f1e1ea128fc.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29906d71d40aff862123d44634945ae14980abe2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
