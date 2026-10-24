# MulEquiv.instFintype

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9e9e1f8e83bd8c504c151656eddd137be05e50fce3e63e86186dd4f85babc68b",
  "kind": "instance",
  "lexical_name": "MulEquiv.instFintype",
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
  "slug": "mulequiv-instfintype--745d3e767c078dc7376b0ec3",
  "source": {
    "blob": "39d8282428f54a736156c666b4981fdd5b379b76",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 151,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:745d3e767c078dc7376b0ec349b66b62d11a9cd834cf271e21e0f423c7abe0bc",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9e9e1f8e83bd8c504c151656eddd137be05e50fce3e63e86186dd4f85babc68b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 151–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance MulEquiv.instFintype
    {α β : Type*} [Mul α] [Mul β] [DecidableEq α] [DecidableEq β] [Fintype α] [Fintype β] :
    Fintype (α ≃* β) where
  elems := Equiv.instFintype.elems.filterMap
    (fun e => if h : ∀ a b : α, e (a * b) = e a * e b then (⟨e, h⟩ : α ≃* β) else none) (by aesop)
  complete me := (Finset.mem_filterMap ..).mpr ⟨me.toEquiv, Finset.mem_univ _, by {simp; rfl}⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Perm/Variant3636e4dbe08cd181007497b92ea841b5bd10c64da6b1e31016bfd15ab6d53af2.lean#L151).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `39d8282428f54a736156c666b4981fdd5b379b76` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
