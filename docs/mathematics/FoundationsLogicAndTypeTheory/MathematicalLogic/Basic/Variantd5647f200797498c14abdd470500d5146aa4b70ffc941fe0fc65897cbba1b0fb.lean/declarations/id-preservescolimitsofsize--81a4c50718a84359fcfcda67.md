# id_preservesColimitsOfSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:307a0405bea21b38dff0ec3b63f96726f9557ed237f3dc9d76aa57bd004af763",
  "kind": "instance",
  "lexical_name": "id_preservesColimitsOfSize",
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
  "slug": "id-preservescolimitsofsize--81a4c50718a84359fcfcda67",
  "source": {
    "blob": "21df45487c2d8a99162d7867f9050856863f14a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 167,
    "line": 157,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:81a4c50718a84359fcfcda67241dd63f42847f69b8badea610759bb965442d18",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:307a0405bea21b38dff0ec3b63f96726f9557ed237f3dc9d76aa57bd004af763`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–167.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance id_preservesColimitsOfSize : PreservesColimitsOfSize.{w', w} (𝟭 C) where
  preservesColimitsOfShape {J} 𝒥 :=
    {
      preservesColimit := fun {K} =>
        ⟨fun {c} h =>
          ⟨fun s => h.desc ⟨s.pt, fun j => s.ι.app j, fun _ _ f => s.ι.naturality f⟩, by
            cases K; rcases c with ⟨_, _, _⟩; intro s j; cases s; exact h.fac _ j, by
            cases K; rcases c with ⟨_, _, _⟩; intro s m w; rcases s with ⟨_, _, _⟩;
              exact h.uniq _ m w⟩⟩ }

@[deprecated "use id_preservesColimitsOfSize" (since := "2024-11-19")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variantd5647f200797498c14abdd470500d5146aa4b70ffc941fe0fc65897cbba1b0fb.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21df45487c2d8a99162d7867f9050856863f14a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
