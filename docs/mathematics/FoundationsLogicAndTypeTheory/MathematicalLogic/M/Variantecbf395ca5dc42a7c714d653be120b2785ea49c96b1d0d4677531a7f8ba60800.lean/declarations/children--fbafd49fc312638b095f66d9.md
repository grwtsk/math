# children

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ba21ad0bafc280e4fc0e9e890cde4bfc0a1b9e5f9747ef7484ed8ffbcf355d2e",
  "kind": "def",
  "lexical_name": "children",
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
  "slug": "children--fbafd49fc312638b095f66d9",
  "source": {
    "blob": "7150a00e841669972718d5c16961974abfcf9fd1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 193,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantecbf395ca5dc42a7c714d653be120b2785ea49c96b1d0d4677531a7f8ba60800.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fbafd49fc312638b095f66d9e840dd92cadcd940ef12128917b58152520b74a6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantecbf395ca5dc42a7c714d653be120b2785ea49c96b1d0d4677531a7f8ba60800.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ba21ad0bafc280e4fc0e9e890cde4bfc0a1b9e5f9747ef7484ed8ffbcf355d2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 193–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def children (x : M F) (i : F.B (head x)) : M F :=
  have H := fun n : ℕ => @head_succ' _ n 0 x.1 x.2
  { approx := fun n => children' (x.1 _) (cast (congr_arg _ <| by simp only [head, H]) i)
    consistent := by
      intro n
      have P' := x.2 (succ n)
      apply agree_children _ _ _ P'
      trans i
      · apply cast_heq
      symm
      apply cast_heq }

/-- select a subtree using an `i : F.Idx` or return an arbitrary tree if
`i` designates no subtree of `x` -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantecbf395ca5dc42a7c714d653be120b2785ea49c96b1d0d4677531a7f8ba60800.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/M/Variantecbf395ca5dc42a7c714d653be120b2785ea49c96b1d0d4677531a7f8ba60800.lean#L193).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7150a00e841669972718d5c16961974abfcf9fd1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
