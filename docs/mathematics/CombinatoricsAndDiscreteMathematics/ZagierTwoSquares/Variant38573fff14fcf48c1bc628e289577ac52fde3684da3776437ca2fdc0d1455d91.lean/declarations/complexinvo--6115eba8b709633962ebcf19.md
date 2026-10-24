# complexInvo

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:564dc7c89deb4ba8f1fa2b76d1ed71e821d04d7cb31f12c2469b12cccca29d53",
  "kind": "def",
  "lexical_name": "complexInvo",
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
  "slug": "complexinvo--6115eba8b709633962ebcf19",
  "source": {
    "blob": "aeee2a37bfe3b4463ae7c838acb88fd8fa27d055",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6115eba8b709633962ebcf19dc29f5a612a82780def112f0ebf17f89e840c5ba",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:564dc7c89deb4ba8f1fa2b76d1ed71e821d04d7cb31f12c2469b12cccca29d53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def complexInvo : Function.End (zagierSet k) := fun ⟨⟨x, y, z⟩, h⟩ =>
  ⟨if x + z < y then ⟨x + 2 * z, z, y - x - z⟩ else
   if 2 * y < x then ⟨x - 2 * y, x + z - y, y⟩ else
                     ⟨2 * y - x, y, x + z - y⟩, by
  split_ifs with less more <;> simp only [zagierSet, Set.mem_setOf_eq] at h ⊢
  · -- less: `x + z < y` (`x < y - z` as stated by Zagier)
    rw [Nat.sub_sub]; zify [less.le] at h ⊢; linarith [h]
  · -- more: `2 * y < x`
    push_neg at less; zify [less, more.le] at h ⊢; linarith [h]
  · -- middle: `x` is neither less than `y - z` or more than `2 * y`
    push_neg at less more; zify [less, more] at h ⊢; linarith [h]⟩

variable [hk : Fact (4 * k + 1).Prime]

/-- `complexInvo k` is indeed an involution. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ZagierTwoSquares/Variant38573fff14fcf48c1bc628e289577ac52fde3684da3776437ca2fdc0d1455d91.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aeee2a37bfe3b4463ae7c838acb88fd8fa27d055` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
