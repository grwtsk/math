# card_fragmentCatalogue_le_uniform

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:21d20264-81e9-d2b6-1e4a-8b30c0cdd61c",
  "kind": "theorem",
  "lexical_name": "card_fragmentCatalogue_le_uniform",
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
  "slug": "card-fragmentcatalogue-le-uniform--45c780f23cfb11d5187ec806",
  "source": {
    "blob": "e3eb52e60a2844b240f1dc44406dded1e929411d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 305,
    "line": 294,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:45c780f23cfb11d5187ec8063a4e7196d7573fceec6f81b52276f99ced67e126",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:21d20264-81e9-d2b6-1e4a-8b30c0cdd61c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 294–305.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_fragmentCatalogue_le_uniform {I : Type*}
    (indices : Finset I) (C : I → Finset X) (b : ℕ)
    (hsize : ∀ i ∈ indices, (C i).card ≤ b) :
    (fragmentCatalogue indices C).card ≤ indices.card * 2 ^ b := by
  classical
  calc
    _ ≤ ∑ i ∈ indices, 2 ^ (C i).card := card_fragmentCatalogue_le indices C
    _ ≤ ∑ _i ∈ indices, 2 ^ b := Finset.sum_le_sum fun i hi ↦
      Nat.pow_le_pow_right (by decide) (hsize i hi)
    _ = indices.card * 2 ^ b := by simp

end FormalResearch.MathematicalTooling.Coverage
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Ownership/Variante66a41c98c960b531307f455966c280163abc5954c470b0df7e9ce7f552672f6.lean#L294).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3eb52e60a2844b240f1dc44406dded1e929411d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
