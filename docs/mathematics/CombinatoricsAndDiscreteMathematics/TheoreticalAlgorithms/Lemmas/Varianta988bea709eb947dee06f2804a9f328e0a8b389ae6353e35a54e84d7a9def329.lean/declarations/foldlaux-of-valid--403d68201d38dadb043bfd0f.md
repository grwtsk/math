# foldlAux_of_valid

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9bd37f09-f3b9-de18-b699-87eb50aa1f26",
  "kind": "theorem",
  "lexical_name": "foldlAux_of_valid",
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
  "slug": "foldlaux-of-valid--403d68201d38dadb043bfd0f",
  "source": {
    "blob": "a880f73343c5476f55710a0d16f71c9bfba7178d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 713,
    "line": 705,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:403d68201d38dadb043bfd0f82e48a91f33891b97cf15941bd41640060262349",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9bd37f09-f3b9-de18-b699-87eb50aa1f26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 705–713.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem foldlAux_of_valid (f : α → Char → α) : ∀ l m r a,
    foldlAux f ⟨l ++ m ++ r⟩ ⟨utf8Len l + utf8Len m⟩ ⟨utf8Len l⟩ a = m.foldl f a
  | l, [], r, a => by unfold foldlAux; simp
  | l, c::m, r, a => by
    unfold foldlAux
    rw [dif_pos (by exact Nat.lt_add_of_pos_right add_csize_pos)]
    simp [get_of_valid l (c::(m++r)), next_of_valid l c (m++r)]
    simpa [← Nat.add_assoc, Nat.add_right_comm] using foldlAux_of_valid f (l++[c]) m r (f a c)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Lemmas/Varianta988bea709eb947dee06f2804a9f328e0a8b389ae6353e35a54e84d7a9def329.lean#L705).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a880f73343c5476f55710a0d16f71c9bfba7178d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
