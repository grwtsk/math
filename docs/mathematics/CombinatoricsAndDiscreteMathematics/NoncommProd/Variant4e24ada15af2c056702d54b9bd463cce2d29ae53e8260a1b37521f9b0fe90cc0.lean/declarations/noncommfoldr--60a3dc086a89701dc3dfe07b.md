# noncommFoldr

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6a738f88b42217bd96ecf9039b143e3fbd3ea2ae9735bfd8c30be515e2d80dd3",
  "kind": "def",
  "lexical_name": "noncommFoldr",
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
  "slug": "noncommfoldr--60a3dc086a89701dc3dfe07b",
  "source": {
    "blob": "d3957b355efaf542c5da22b8c41b89c9afb2b4d4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 45,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:60a3dc086a89701dc3dfe07b476106e4660d19f1ef32c9113d6b52cf2d953bf9",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6a738f88b42217bd96ecf9039b143e3fbd3ea2ae9735bfd8c30be515e2d80dd3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def noncommFoldr (s : Multiset α)
    (comm : { x | x ∈ s }.Pairwise fun x y => ∀ b, f x (f y b) = f y (f x b)) (b : β) : β :=
  letI : LeftCommutative (α := { x // x ∈ s }) (f ∘ Subtype.val) :=
    ⟨fun ⟨_, hx⟩ ⟨_, hy⟩ =>
      haveI : Std.Refl fun x y => ∀ b, f x (f y b) = f y (f x b) := ⟨fun _ _ => rfl⟩
      comm.forall₂ hx hy⟩
  s.attach.foldr (f ∘ Subtype.val) b

set_option backward.isDefEq.respectTransparency false in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/NoncommProd/Variant4e24ada15af2c056702d54b9bd463cce2d29ae53e8260a1b37521f9b0fe90cc0.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3957b355efaf542c5da22b8c41b89c9afb2b4d4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
