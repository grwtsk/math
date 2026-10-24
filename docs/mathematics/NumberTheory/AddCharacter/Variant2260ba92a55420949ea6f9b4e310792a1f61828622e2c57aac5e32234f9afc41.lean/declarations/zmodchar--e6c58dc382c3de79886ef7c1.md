# zmodChar

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0b9e883a41d8e7c2b5ee599fa6bb4c15e72314c71a457546f78f910f0969432b",
  "kind": "def",
  "lexical_name": "zmodChar",
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
  "slug": "zmodchar--e6c58dc382c3de79886ef7c1",
  "source": {
    "blob": "b70aea8e3745ab061bd55311edd9ff3ef3bd909a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 332,
    "line": 324,
    "path": "GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e6c58dc382c3de79886ef7c1e60b397cea3409d6307e843e1a8913450fc8d49b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0b9e883a41d8e7c2b5ee599fa6bb4c15e72314c71a457546f78f910f0969432b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–332.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def zmodChar (n : ℕ+) {ζ : C} (hζ : ζ ^ (n : ℕ) = 1) : AddChar (ZMod n) C where
  toFun := fun a : Multiplicative (ZMod n) => ζ ^ a.toAdd.val
  map_one' := by simp only [toAdd_one, ZMod.val_zero, pow_zero]
  map_mul' x y := by
    dsimp only
    rw [toAdd_mul, ← pow_add, ZMod.val_add (toAdd x) (toAdd y), ← pow_eq_pow_mod _ hζ]
#align add_char.zmod_char AddChar.zmodChar

/-- The additive character on `ZMod n` defined using `ζ` sends `a` to `ζ^a`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AddCharacter/Variant2260ba92a55420949ea6f9b4e310792a1f61828622e2c57aac5e32234f9afc41.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b70aea8e3745ab061bd55311edd9ff3ef3bd909a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
