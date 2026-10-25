# dom_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4e8b628c-5a8e-ffe7-5301-5a85a21b5c8a",
  "kind": "theorem",
  "lexical_name": "dom_finite",
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
  "slug": "dom-finite--ad1d6bcf01836d4ccfec802f",
  "source": {
    "blob": "2d63605496257d201595133da68bce9fa7375bc5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 694,
    "line": 687,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2baf1ec655bfe972f157ead68b93a2cdc0cfb6b0877f6492520a32d5b5e9c496.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad1d6bcf01836d4ccfec802f48f14b7b0b5aee26b85a266fdbc01aa92bbc25cd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2baf1ec655bfe972f157ead68b93a2cdc0cfb6b0877f6492520a32d5b5e9c496.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4e8b628c-5a8e-ffe7-5301-5a85a21b5c8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 687–694.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem dom_finite [Finite α] (f : α → σ) : Primrec f :=
  let ⟨l, _, m⟩ := Finite.exists_univ_list α
  option_some_iff.1 <| by
    have := decidableEqOfEncodable α
    refine ((list_getElem?₁ (l.map f)).comp (list_idxOf₁ l)).of_eq fun a => ?_
    rw [List.getElem?_map, List.getElem?_idxOf (m a), Option.map_some]

/-- A function is `PrimrecBounded` if its size is bounded by a primitive recursive function -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2baf1ec655bfe972f157ead68b93a2cdc0cfb6b0877f6492520a32d5b5e9c496.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Basic/Variant2baf1ec655bfe972f157ead68b93a2cdc0cfb6b0877f6492520a32d5b5e9c496.lean#L687).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2d63605496257d201595133da68bce9fa7375bc5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
