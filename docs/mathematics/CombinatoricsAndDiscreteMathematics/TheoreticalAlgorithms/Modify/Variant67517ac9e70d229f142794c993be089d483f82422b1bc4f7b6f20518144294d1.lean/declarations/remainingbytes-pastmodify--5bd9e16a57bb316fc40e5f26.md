# remainingBytes_pastModify

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "daa94094ee043ae3f6e84489db5b994eaa52a1ef",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 139,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b961f81e-d4b2-084b-bf24-b996395d91d5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a13979fa-5609-06dc-d96f-b61f8d3bfa4c",
  "kind": "theorem",
  "lexical_name": "remainingBytes_pastModify",
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
  "slug": "remainingbytes-pastmodify--5bd9e16a57bb316fc40e5f26",
  "source": {
    "blob": "daa94094ee043ae3f6e84489db5b994eaa52a1ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 139,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5bd9e16a57bb316fc40e5f26ba51c6672c87babebf2ccb0d86bc7bfef8f879a8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a13979fa-5609-06dc-d96f-b61f8d3bfa4c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem remainingBytes_pastModify {s : String} {p : s.Pos} {f : Char → Char} {hp} :
    (p.pastModify f hp).remainingBytes = (p.next hp).remainingBytes :=
  remainingBytes_pastSet

/--
Replaces the character at a specified position in a string with a new character. If the position is
invalid, the string is returned unchanged.

If both the replacement character and the replaced character are 7-bit ASCII characters and the
string is not shared, then it is updated in-place and not copied.

This is a legacy function. The recommended alternative is `String.Pos.set`, combined with
`String.pos` or another means of obtaining a `String.Pos`.

Examples:
* `"abc".set ⟨1⟩ 'B' = "aBc"`
* `"abc".set ⟨3⟩ 'D' = "abc"`
* `"L∃∀N".set ⟨4⟩ 'X' = "L∃XN"`
* `"L∃∀N".set ⟨2⟩ 'X' = "L∃∀N"` because `'∃'` is a multi-byte character, so the byte index `2` is an
  invalid position.
-/
@[extern "lean_string_utf8_set", expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Modify/Variant67517ac9e70d229f142794c993be089d483f82422b1bc4f7b6f20518144294d1.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa94094ee043ae3f6e84489db5b994eaa52a1ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
