# decidableBEx

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:98b0a7ddfd33839b6e1332ff5f68a124544552a836bd8566e53ab4ac03089be5",
  "kind": "instance",
  "lexical_name": "decidableBEx",
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
  "slug": "decidablebex--ab382233054e625243cab7ad",
  "source": {
    "blob": "aa5e35378b6eab59b08beb521645cfe03fd1cd30",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 893,
    "line": 883,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ab382233054e625243cab7add831aa81ae6a18900d8d7ef9065146868dcf1bb1",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:98b0a7ddfd33839b6e1332ff5f68a124544552a836bd8566e53ab4ac03089be5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 883–893.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance decidableBEx (p : α → Prop) [DecidablePred p] :
    ∀ l : List α, Decidable (Exists fun x => x ∈ l ∧ p x)
  | [] => isFalse nofun
  | x :: xs =>
    if h₁ : p x then isTrue ⟨x, .head .., h₁⟩ else
      match decidableBEx p xs with
      | isTrue h₂ => isTrue <| let ⟨y, hm, hp⟩ := h₂; ⟨y, .tail _ hm, hp⟩
      | isFalse h₂ => isFalse fun
        | ⟨y, .tail _ h, hp⟩ => h₂ ⟨y, h, hp⟩
        | ⟨_, .head .., hp⟩ => h₁ hp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantd3b7b17ebd20cc09d7db5e34dcd303490838683e5a66bfb56b57818f5f04150c.lean#L883).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aa5e35378b6eab59b08beb521645cfe03fd1cd30` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
