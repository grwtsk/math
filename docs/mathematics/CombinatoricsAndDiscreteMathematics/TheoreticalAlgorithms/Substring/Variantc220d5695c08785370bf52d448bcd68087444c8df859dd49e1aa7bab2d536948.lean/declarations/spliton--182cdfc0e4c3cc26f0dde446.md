# splitOn

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cf8daaaf52fcb000cc9ac77c1d8c1d5d525ad3847e2a1d54acaffca7a515427e",
  "kind": "def",
  "lexical_name": "splitOn",
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
  "slug": "spliton--182cdfc0e4c3cc26f0dde446",
  "source": {
    "blob": "b9b6fc154a6f3a56b5df2c227aa6da7a4f74e1d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 270,
    "line": 242,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:182cdfc0e4c3cc26f0dde4469ce897d576c1fff999465f0aba7bc3d84ce04df8",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cf8daaaf52fcb000cc9ac77c1d8c1d5d525ad3847e2a1d54acaffca7a515427e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 242–270.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def splitOn (s : Substring.Raw) (sep : String := " ") : List Substring.Raw :=
  if sep == "" then
    [s]
  else
    let rec loop (b i j : String.Pos.Raw) (r : List Substring.Raw) : List Substring.Raw :=
      if h : i.byteIdx < s.bsize then
        have := Nat.sub_lt_sub_left h (lt_next s i h)
        if s.get i == j.get sep then
          let i := s.next i
          let j := j.next sep
          if j.atEnd sep then
            loop i i 0 (s.extract b (i.unoffsetBy j) :: r)
          else
            loop b i j r
        else
          loop b (s.next i) 0 r
      else
        let r := if j.atEnd sep then
          "".toRawSubstring :: s.extract b (i.unoffsetBy j) :: r
        else
          s.extract b i :: r
        r.reverse
      termination_by s.bsize - i.1
    loop 0 0 0 []

/--
Folds a function over a substring from the left, accumulating a value starting with `init`. The
accumulated value is combined with each character in order, using `f`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Substring/Variantc220d5695c08785370bf52d448bcd68087444c8df859dd49e1aa7bab2d536948.lean#L242).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b9b6fc154a6f3a56b5df2c227aa6da7a4f74e1d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
