# exists_le_maximal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6ead011d-86a7-59ca-2fa5-066d6e1d6865",
  "kind": "lemma",
  "lexical_name": "exists_le_maximal",
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
  "slug": "exists-le-maximal--0b6d5151745b0730feeb1c4d",
  "source": {
    "blob": "d0be03c1931c763811b4793cad6bebee01f9964f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 52,
    "line": 47,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0b6d5151745b0730feeb1c4d03ed17370704e1b6cd31ef8ef0de782872003b21",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6ead011d-86a7-59ca-2fa5-066d6e1d6865`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 47–52.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_le_maximal (s : Finset α) (ha : a ∈ s) : ∃ b, a ≤ b ∧ Maximal (· ∈ s) b := by
  classical
  obtain ⟨b, hb, hab, hbmin⟩ : ∃ b ∈ s, a ≤ b ∧ _ := by
    simpa [Maximal, and_assoc] using {x ∈ s | a ≤ x}.exists_maximal ⟨a, mem_filter.2 ⟨ha, le_rfl⟩⟩
  exact ⟨b, hab, hb, fun c hc hbc ↦ hbmin hc (hab.trans hbc) hbc⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Finite/Variant20664bb708ae570bb898ad98b420c6e5a5114187584aacb6075e26ff8a42b98c.lean#L47).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d0be03c1931c763811b4793cad6bebee01f9964f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
