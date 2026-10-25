# recOnSubsingleton'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:891e38318cf10c553b137299cbb926ec25ce5b74ec58462ea1eb388ee821672f",
  "kind": "def",
  "lexical_name": "recOnSubsingleton'",
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
  "slug": "reconsubsingleton--151bdc5af5be62a065746062",
  "source": {
    "blob": "760bec1cbc9d52fe3daba7476d37dbab12a4c027",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 703,
    "line": 694,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant25500269bc9e53ff621f00d36cf1f00b29f59866e073996c0383cd5b9cc38c60.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:151bdc5af5be62a065746062f9af9012dba0f3c29d4755bf0d3e4f23f7701a1b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant25500269bc9e53ff621f00d36cf1f00b29f59866e073996c0383cd5b9cc38c60.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:891e38318cf10c553b137299cbb926ec25ce5b74ec58462ea1eb388ee821672f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 694–703.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
protected def recOnSubsingleton' {φ : Quotient s₁ → Sort*} [∀ a, Subsingleton (φ ⟦a⟧)]
    (q : Quotient s₁)
    (f : ∀ a, φ (Quotient.mk'' a)) : φ q :=
  Quotient.recOnSubsingleton q f
#align quotient.rec_on_subsingleton' Quotient.recOnSubsingleton'

/-- A version of `Quotient.recOnSubsingleton₂` taking `{s₁ : Setoid α} {s₂ : Setoid α}`
as implicit arguments instead of instance arguments. -/
-- porting note: removed `@[reducible]` because it caused extremely slow `simp`
@[elab_as_elim]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant25500269bc9e53ff621f00d36cf1f00b29f59866e073996c0383cd5b9cc38c60.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/Quot/Variant25500269bc9e53ff621f00d36cf1f00b29f59866e073996c0383cd5b9cc38c60.lean#L694).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `760bec1cbc9d52fe3daba7476d37dbab12a4c027` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
