# Sign.inv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d556dec0bcfa3a4a603051c23deb2f88462c287bbb70ea5d118f27cdafd6d740",
  "kind": "def",
  "lexical_name": "Sign.inv",
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
  "slug": "sign-inv--0752b544e2cdcd872bd716af",
  "source": {
    "blob": "3eed9e459c4c89e9ce8d07ba1ca363be743a2fdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 439,
    "line": 429,
    "path": "GRWTSK/Algebra/Lemmas/Variantc3baa796eb5efdddca8b7d050e7f5701d390e430bfcdac0685f4213ad5d1ec2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0752b544e2cdcd872bd716af615431d4b1df21f434f1106516f719a4ff447350",
  "verification": {
    "reference": "docs/verification/Algebra/Lemmas/Variantc3baa796eb5efdddca8b7d050e7f5701d390e430bfcdac0685f4213ad5d1ec2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d556dec0bcfa3a4a603051c23deb2f88462c287bbb70ea5d118f27cdafd6d740`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 429–439.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Sign.inv (iM : Q(CommGroupWithZero $M)) (y : Q($M)) (g : Sign M) :
    MetaM (Q($(g.expr y)⁻¹ = $(g.expr q($y⁻¹)))) := do
  match (dependent := true) g with
  | .plus => pure q(rfl)
  | .minus _ =>
    assumeInstancesCommute
    pure q(inv_neg (a := $y))

/-- Given expressions `y₁ y₂ : Q($M)` with specified signs (either + or -), construct a proof that
the quotient of (± `y₁`) and (± `y₂`) (here taking the specified signs) is ± `y₁ / y₂`; return this
proof and the computed sign. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Lemmas/Variantc3baa796eb5efdddca8b7d050e7f5701d390e430bfcdac0685f4213ad5d1ec2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Lemmas/Variantc3baa796eb5efdddca8b7d050e7f5701d390e430bfcdac0685f4213ad5d1ec2c.lean#L429).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3eed9e459c4c89e9ce8d07ba1ca363be743a2fdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
