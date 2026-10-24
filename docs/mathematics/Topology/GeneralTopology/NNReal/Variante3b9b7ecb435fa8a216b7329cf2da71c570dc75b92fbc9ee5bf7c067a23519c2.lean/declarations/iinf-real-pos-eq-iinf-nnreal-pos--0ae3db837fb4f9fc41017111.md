# iInf_real_pos_eq_iInf_nnreal_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:392312b1-9d7b-60d7-f9d0-5ffd96291785",
  "kind": "theorem",
  "lexical_name": "iInf_real_pos_eq_iInf_nnreal_pos",
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
  "slug": "iinf-real-pos-eq-iinf-nnreal-pos--0ae3db837fb4f9fc41017111",
  "source": {
    "blob": "9b64fe4009390777ea7ec931c60e5f360a682d59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 236,
    "path": "GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0ae3db837fb4f9fc4101711152d16a204200a7b7a7882f5974ee4389dd51d663",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:392312b1-9d7b-60d7-f9d0-5ffd96291785`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iInf_real_pos_eq_iInf_nnreal_pos [CompleteLattice α] {f : ℝ → α} :
    ⨅ (n : ℝ) (_ : 0 < n), f n = ⨅ (n : ℝ≥0) (_ : 0 < n), f n :=
  le_antisymm (iInf_mono' fun r => ⟨r, le_rfl⟩) (iInf₂_mono' fun r hr => ⟨⟨r, hr.le⟩, hr, le_rfl⟩)
#align nnreal.infi_real_pos_eq_infi_nnreal_pos NNReal.iInf_real_pos_eq_iInf_nnreal_pos

end coe

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/NNReal/Variante3b9b7ecb435fa8a216b7329cf2da71c570dc75b92fbc9ee5bf7c067a23519c2.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9b64fe4009390777ea7ec931c60e5f360a682d59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
