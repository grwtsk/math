# on_isRefl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3d5631a39f796b36795d206a26c992ab6e8958d276a78b6b2cfb71c52b322937",
  "kind": "instance",
  "lexical_name": "on_isRefl",
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
  "slug": "on-isrefl--c1c49eed2f1cea1c5b48a246",
  "source": {
    "blob": "4721186b92a28eea4f6b5962c4ebd77b99f0751a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 77,
    "path": "GRWTSK/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c1c49eed2f1cea1c5b48a2460bfb4b50e0a9818a7236d650c4bd086c1b3914e5",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3d5631a39f796b36795d206a26c992ab6e8958d276a78b6b2cfb71c52b322937`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance on_isRefl {f : G → S} : IsRefl G fun a b => Commute (f a) (f b) :=
  ⟨fun _ => Commute.refl _⟩

end Mul

section Semigroup

variable [Semigroup S] {a b c : S}

/-- If `a` commutes with both `b` and `c`, then it commutes with their product. -/
@[to_additive (attr := simp)
"If `a` commutes with both `b` and `c`, then it commutes with their sum."]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/Defs/Variant4d124c3436ded838174caae6ca9ae0eb24f8657a337d0ec81cb02e6b1212fee8.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4721186b92a28eea4f6b5962c4ebd77b99f0751a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
