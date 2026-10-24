# applyFinsupp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5d0c95c3a6f02932a5abb38f1b1fb8112cd5d9d6213b155edd2f63e6fd108ff0",
  "kind": "def",
  "lexical_name": "applyFinsupp",
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
  "slug": "applyfinsupp--7b5a94ffcf6ee24896028c05",
  "source": {
    "blob": "b97a1675a83e4cddc8ef8f230c9f785e80f96e15",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 101,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7b5a94ffcf6ee24896028c051b188eb3afefbdd938063aaa5e6d154669ce26a2",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5d0c95c3a6f02932a5abb38f1b1fb8112cd5d9d6213b155edd2f63e6fd108ff0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 101–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def applyFinsupp (tf : TotalFunction α β) : α →₀ β where
  support := zeroDefaultSupp tf
  toFun := tf.zeroDefault.apply
  mem_support_toFun := by
    intro a
    rcases tf with ⟨A, y⟩
    simp only [zeroDefaultSupp, List.mem_map, List.mem_filter, exists_and_right,
      List.mem_toFinset, exists_eq_right, Sigma.exists, Ne, zeroDefault]
    rw [apply_eq_dlookup]
    constructor
    · rintro ⟨od, hval, hod⟩
      have := List.mem_dlookup (List.nodupKeys_dedupKeys A) hval
      rw [(_ : List.dlookup a A = od)]
      · simpa using hod
      · simpa [List.dlookup_dedupKeys]
    · intro h
      use (A.dlookup a).getD (0 : β)
      rw [← List.dlookup_dedupKeys] at h ⊢
      simp only [h, ← List.mem_dlookup_iff A.nodupKeys_dedupKeys, not_false_iff, Option.mem_def]
      cases haA : List.dlookup a A.dedupKeys
      · simp [haA] at h
      · simp

variable [SampleableExt α] [SampleableExt β] [Repr α]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Functions/Variantc4d3f5c6fa2b04b844d77be3b927520a05e31accfc2e3ac44eae207c24057e8e.lean#L101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b97a1675a83e4cddc8ef8f230c9f785e80f96e15` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
