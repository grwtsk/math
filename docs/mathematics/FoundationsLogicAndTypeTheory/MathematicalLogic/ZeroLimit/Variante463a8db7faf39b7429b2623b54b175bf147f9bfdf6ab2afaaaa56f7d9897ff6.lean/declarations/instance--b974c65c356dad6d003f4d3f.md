# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b05e1777fdc1e9127f6d21147f9206da29a2db4075e23cc54c0b69f0e76312d5",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--b974c65c356dad6d003f4d3f",
  "source": {
    "blob": "57430aabe171d6e98db2df68b986943b13fe667c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 90,
    "line": 76,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b974c65c356dad6d003f4d3ffd9dad8a1a9f80aa818c7fe9564a883594e8952c",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b05e1777fdc1e9127f6d21147f9206da29a2db4075e23cc54c0b69f0e76312d5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–90.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : Unique { l // Products.isGood ({fun _ ↦ false} : Set (I → Bool)) l } where
  default := ⟨Products.nil, Products.isGood_nil⟩
  uniq := by
    intro ⟨⟨l, hl⟩, hll⟩
    ext
    apply Subtype.ext
    apply (List.lex_nil_or_eq_nil l (r := (· < ·))).resolve_left
    intro _
    apply hll
    have he : {Products.nil} ⊆ {m | m < ⟨l,hl⟩} := by
      simpa only [Products.nil, Products.lt_iff_lex_lt, Set.singleton_subset_iff, Set.mem_setOf_eq]
    apply Submodule.span_mono (Set.image_subset _ he)
    rw [Products.span_nil_eq_top]
    exact Submodule.mem_top

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/ZeroLimit/Variante463a8db7faf39b7429b2623b54b175bf147f9bfdf6ab2afaaaa56f7d9897ff6.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57430aabe171d6e98db2df68b986943b13fe667c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
