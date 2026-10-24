# firstDiffPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:151e6fa25376ed5e4abbd2be5d3d2492374e581f4293dcfad8bd3c4d1b5eea20",
  "kind": "def",
  "lexical_name": "firstDiffPos",
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
  "slug": "firstdiffpos--962e12704b6f9e3767d2a42c",
  "source": {
    "blob": "28761e3d388d0e5800a6d7114de4549892584ef5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3020,
    "line": 2989,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:962e12704b6f9e3767d2a42ca321605df0dc5199bd178a552cc29fdd3e18298b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:151e6fa25376ed5e4abbd2be5d3d2492374e581f4293dcfad8bd3c4d1b5eea20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2989–3020.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def firstDiffPos (a b : String) : Pos.Raw :=
  let stopPos := a.rawEndPos.min b.rawEndPos
  let rec loop (i : Pos.Raw) : Pos.Raw :=
    if h : i < stopPos then
      if i.get a != i.get b then i
      else
        have := Nat.sub_lt_sub_left h (Pos.Raw.lt_next a i)
        loop (i.next a)
    else i
    termination_by stopPos.1 - i.1
  loop 0

/--
Creates a new string that consists of the region of the input string delimited by the two positions.

The result is `""` if the start position is greater than or equal to the end position or if the
start position is at the end of the string. If either position is invalid (that is, if either points
at the middle of a multi-byte UTF-8 character) then the result is unspecified.

This is a legacy function. The recommended alternative is `String.Pos.extract`, but usually
it is even better to operate on `String.Slice` instead and call `String.Slice.copy` (only) if
required.

Examples:
* `"red green blue".extract ⟨0⟩ ⟨3⟩ = "red"`
* `"red green blue".extract ⟨3⟩ ⟨0⟩ = ""`
* `"red green blue".extract ⟨0⟩ ⟨100⟩ = "red green blue"`
* `"red green blue".extract ⟨4⟩ ⟨100⟩ = "green blue"`
* `"L∃∀N".extract ⟨1⟩ ⟨2⟩ = "∃∀N"`
* `"L∃∀N".extract ⟨2⟩ ⟨100⟩ = ""`
-/
@[extern "lean_string_utf8_extract", expose]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Basic/Variantb28e6758cceb8d651c4aac7f62365088e3a3ecb471231a9630951989f2a881dc.lean#L2989).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28761e3d388d0e5800a6d7114de4549892584ef5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
