# approx_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e380ca09-754c-a85a-c651-e805db230a96",
  "kind": "theorem",
  "lexical_name": "approx_nonneg",
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
  "slug": "approx-nonneg--d9fdc0497fe623bca505e819",
  "source": {
    "blob": "f22d298c5365aaf720a73578ecadd66f8acf1149",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 195,
    "line": 189,
    "path": "GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9fdc0497fe623bca505e819afe2b15893b502e76aa5c3d28a70a0c636b92251",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e380ca09-754c-a85a-c651-e805db230a96`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 189–195.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem approx_nonneg (c : CU P) (n : ℕ) (x : X) : 0 ≤ c.approx n x := by
  induction n generalizing c with
  | zero => exact indicator_nonneg (fun _ _ => zero_le_one) _
  | succ n ihn =>
    simp only [approx, midpoint_eq_smul_add]
    refine mul_nonneg (inv_nonneg.2 zero_le_two) (add_nonneg ?_ ?_) <;> apply ihn

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/UrysohnsLemma/Variant61f29ad3230f8ca0fe070e759e755f9541f1d2312c6e12c113bd54d9b0945f37.lean#L189).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f22d298c5365aaf720a73578ecadd66f8acf1149` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
