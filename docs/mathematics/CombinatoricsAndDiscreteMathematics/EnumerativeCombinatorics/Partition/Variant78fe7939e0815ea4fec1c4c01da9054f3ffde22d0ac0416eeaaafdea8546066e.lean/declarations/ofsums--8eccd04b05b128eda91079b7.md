# ofSums

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f2efe20a0eaf516a66c60dc591305286fb46b77d24c5b66e1ed03ed3d728366f",
  "kind": "def",
  "lexical_name": "ofSums",
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
  "slug": "ofsums--8eccd04b05b128eda91079b7",
  "source": {
    "blob": "dc4283d0475faff073fc09fb1096d0ee591bad13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 113,
    "line": 100,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8eccd04b05b128eda91079b77ac30ea11c0e9ad67077ef9486ad3bf642ef032d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f2efe20a0eaf516a66c60dc591305286fb46b77d24c5b66e1ed03ed3d728366f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–113.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ofSums (n : ℕ) (l : Multiset ℕ) (hl : l.sum = n) : Partition n
    where
  parts := l.filter (· ≠ 0)
  parts_pos {i} hi := Nat.pos_of_ne_zero <| by apply of_mem_filter hi
  parts_sum := by
    have lt : l.filter (· = 0) + l.filter (· ≠ 0) = l := filter_add_not _ l
    apply_fun Multiset.sum at lt
    have lz : (l.filter (· = 0)).sum = 0 := by
      rw [Multiset.sum_eq_zero_iff]
      simp
    rwa [sum_add (filter (fun x => x = 0) l) (filter (fun x => ¬x = 0) l),lz,hl, zero_add] at lt
#align nat.partition.of_sums Nat.Partition.ofSums

/-- A `Multiset ℕ` induces a partition on its sum. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/EnumerativeCombinatorics/Partition/Variant78fe7939e0815ea4fec1c4c01da9054f3ffde22d0ac0416eeaaafdea8546066e.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc4283d0475faff073fc09fb1096d0ee591bad13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
