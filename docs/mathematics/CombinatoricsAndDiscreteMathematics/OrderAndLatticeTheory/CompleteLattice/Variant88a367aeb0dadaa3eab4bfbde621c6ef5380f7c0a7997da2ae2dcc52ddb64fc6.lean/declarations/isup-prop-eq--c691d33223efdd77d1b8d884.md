# iSup_Prop_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8363b653b736b9863138beaf762286e165208603",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1731,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/88/88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8c065953-f83d-59a0-becb-58ec081145df",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4597161b-2145-2738-79dc-268f48a000c7",
  "kind": "theorem",
  "lexical_name": "iSup_Prop_eq",
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
  "slug": "isup-prop-eq--c691d33223efdd77d1b8d884",
  "source": {
    "blob": "8363b653b736b9863138beaf762286e165208603",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1736,
    "line": 1731,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c691d33223efdd77d1b8d884c77aa418531c39cf97f0f74df525c3bdf0e1931a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4597161b-2145-2738-79dc-268f48a000c7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1731–1736.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iSup_Prop_eq {p : ι → Prop} : ⨆ i, p i = ∃ i, p i :=
  le_antisymm (fun ⟨_, ⟨i, (eq : p i = _)⟩, hq⟩ => ⟨i, eq.symm ▸ hq⟩) fun ⟨i, hi⟩ =>
    ⟨p i, ⟨i, rfl⟩, hi⟩
#align supr_Prop_eq iSup_Prop_eq

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/OrderAndLatticeTheory/CompleteLattice/Variant88a367aeb0dadaa3eab4bfbde621c6ef5380f7c0a7997da2ae2dcc52ddb64fc6.lean#L1731).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8363b653b736b9863138beaf762286e165208603` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
