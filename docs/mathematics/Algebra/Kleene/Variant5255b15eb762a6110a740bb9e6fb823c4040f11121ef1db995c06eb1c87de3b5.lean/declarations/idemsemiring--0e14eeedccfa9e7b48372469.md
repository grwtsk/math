# IdemSemiring

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fa1dbc10ca91e2f82e3410f8e7dcc9ddcaf6b44b30bb0835b8cad1b4c014f083",
  "kind": "class",
  "lexical_name": "IdemSemiring",
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
  "slug": "idemsemiring--0e14eeedccfa9e7b48372469",
  "source": {
    "blob": "7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 60,
    "path": "GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0e14eeedccfa9e7b48372469e3a0ad241d73b1337ab9d32f8e487a182ba8a0db",
  "verification": {
    "reference": "docs/verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fa1dbc10ca91e2f82e3410f8e7dcc9ddcaf6b44b30bb0835b8cad1b4c014f083`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 60–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class IdemSemiring (α : Type u) extends Semiring α, SemilatticeSup α where
  protected sup := (· + ·)
  protected add_eq_sup : ∀ a b : α, a + b = a ⊔ b := by
    intros
    rfl
  /-- The bottom element of an idempotent semiring: `0` by default -/
  protected bot : α := 0
  protected bot_le : ∀ a, bot ≤ a

/-- An idempotent commutative semiring is a commutative semiring with the additional property that
addition is idempotent. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kleene/Variant5255b15eb762a6110a740bb9e6fb823c4040f11121ef1db995c06eb1c87de3b5.lean#L60).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d3c281067cd5f23ac049a3c9e56e0bd4d2a4c13` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
