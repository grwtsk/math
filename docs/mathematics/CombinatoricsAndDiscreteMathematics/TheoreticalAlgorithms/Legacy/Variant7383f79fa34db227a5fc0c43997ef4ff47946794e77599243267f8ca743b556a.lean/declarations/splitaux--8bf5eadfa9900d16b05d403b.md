# splitAux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6e9a877087ae8433d7faa2f199487d8cff04ee5b8aa3e2d809882f26587df790",
  "kind": "def",
  "lexical_name": "splitAux",
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
  "slug": "splitaux--8bf5eadfa9900d16b05d403b",
  "source": {
    "blob": "9e9b79341a7abe40d70652c0f5b7ea3d87066eab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 22,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant7383f79fa34db227a5fc0c43997ef4ff47946794e77599243267f8ca743b556a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8bf5eadfa9900d16b05d403ba8216d1307a9d8728a66f7d7cdd4b6d020dd5e2f",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant7383f79fa34db227a5fc0c43997ef4ff47946794e77599243267f8ca743b556a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6e9a877087ae8433d7faa2f199487d8cff04ee5b8aa3e2d809882f26587df790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 22–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] def splitAux (s : String) (p : Char → Bool) (b : Pos.Raw) (i : Pos.Raw) (r : List String) : List String :=
  if h : i.atEnd s then
    let r := (b.extract s i)::r
    r.reverse
  else
    have := Nat.sub_lt_sub_left (Nat.gt_of_not_le (mt decide_eq_true h)) (Pos.Raw.lt_next s _)
    if p (i.get s) then
      let i' := i.next s
      splitAux s p i' i' (b.extract s i :: r)
    else
      splitAux s p b (i.next s) r
termination_by s.rawEndPos.1 - i.1

/--
Splits a string at each character for which `p` returns `true`.

The characters that satisfy `p` are not included in any of the resulting strings. If multiple
characters in a row satisfy `p`, then the resulting list will contain empty strings.

This is a legacy function. Use `String.split` instead.

Examples:
* `"coffee tea water".split (·.isWhitespace) = ["coffee", "tea", "water"]`
* `"coffee  tea  water".split (·.isWhitespace) = ["coffee", "", "tea", "", "water"]`
* `"fun x =>\n  x + 1\n".split (· == '\n') = ["fun x =>", "  x + 1", ""]`
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant7383f79fa34db227a5fc0c43997ef4ff47946794e77599243267f8ca743b556a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Legacy/Variant7383f79fa34db227a5fc0c43997ef4ff47946794e77599243267f8ca743b556a.lean#L22).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9e9b79341a7abe40d70652c0f5b7ea3d87066eab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
