# IsEquivalent.eventually_neg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "65a10717f7602d2d07809c67a3ce7d3c260caf83",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2b/2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:faeb7d31-ed96-48a6-f492-8d8e1b0f8a26",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:909e8c1f-856e-0331-a1eb-114587793a2c",
  "kind": "theorem",
  "lexical_name": "IsEquivalent.eventually_neg",
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
  "slug": "isequivalent-eventually-neg--a8b84c45103ef0b529bd6323",
  "source": {
    "blob": "65a10717f7602d2d07809c67a3ce7d3c260caf83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 373,
    "line": 363,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8b84c45103ef0b529bd63236f3327abb53beed2be5edfb77edbe5511fdf14a2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:909e8c1f-856e-0331-a1eb-114587793a2c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–373.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsEquivalent.eventually_neg (h : u ~[l] v) (hv : ∀ᶠ t in l, v t < 0) :
    ∀ᶠ x in l, u x < 0 := by
  obtain ⟨φ, hφ, h_eq⟩ := h.exists_pos_eq_mul
  exact (hφ.and (hv.and h_eq)).mono (fun x ⟨hφ, hv, h_eq⟩ ↦ h_eq ▸ mul_neg_of_pos_of_neg hφ hv)

end ClosedIicTopology

end NormedLinearOrderedField

section Real

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/AsymptoticEquivalent/Variant2b28a7313ef00fc9068d0115edc1a7e0986f2f36f8340da7d1c4cb6f9b7fe198.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `65a10717f7602d2d07809c67a3ce7d3c260caf83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
