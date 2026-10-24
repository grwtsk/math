# actual_mellin_pole_filter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d4cd106d-ec13-8c9a-0967-3a12469b1eca",
  "kind": "theorem",
  "lexical_name": "actual_mellin_pole_filter",
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
  "slug": "actual-mellin-pole-filter--7a3b5f9fc7457aababdd466d",
  "source": {
    "blob": "53f157e5b2e7cca3f5647d1f2bc313ca8d67e21a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 84,
    "line": 78,
    "path": "GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a3b5f9fc7457aababdd466da776a427ec126ba0aab801ff04736d1f139c45c1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4cd106d-ec13-8c9a-0967-3a12469b1eca`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–84.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_mellin_pole_filter {A : ℝ} (hA : 1 ≤ A) (s : ℂ) :
    mellin (fun x => (actualLogSource A x : ℂ)) s =
      s*(s-1)*normalizedPrimitiveTransform A (s-1/2) := by
  rw [actual_mellin_eq_normalizedTransform,actual_complex_pole_filter hA]
  congr 1
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualMellinFilterAttempt06/Variant359488970ea49faf184a230ffb8fd93f8740f400d5570f37caad4f56fb02a18e.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `53f157e5b2e7cca3f5647d1f2bc313ca8d67e21a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
