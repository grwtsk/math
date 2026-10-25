# FieldAxiom.toProp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a2bef9f2c1e8d1c9138a4050fd6dd51277a195a0e28aaa0f065f8205a10efbf3",
  "kind": "def",
  "lexical_name": "FieldAxiom.toProp",
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
  "slug": "fieldaxiom-toprop--9947f673c95935d46d492e43",
  "source": {
    "blob": "5fc371125e17f87a73b61f69570dc6bf475a6567",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 68,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9947f673c95935d46d492e4317b74fa6b376c9d99065f3ac0f66ad21b8eba9fd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a2bef9f2c1e8d1c9138a4050fd6dd51277a195a0e28aaa0f065f8205a10efbf3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 68–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FieldAxiom.toProp (K : Type*) [Add K] [Mul K] [Neg K] [Zero K] [One K] :
    FieldAxiom → Prop
  | .addAssoc => ∀ x y z : K, (x + y) + z = x + (y + z)
  | .zeroAdd => ∀ x : K, 0 + x = x
  | .negAddCancel => ∀ x : K, -x + x = 0
  | .mulAssoc => ∀ x y z : K, (x * y) * z = x * (y * z)
  | .mulComm => ∀ x y : K, x * y = y * x
  | .oneMul => ∀ x : K, 1 * x = x
  | .existsInv => ∀ x : K, x ≠ 0 → ∃ y, x * y = 1
  | .leftDistrib => ∀ x y z : K, x * (y + z) = x * y + x * z
  | .existsPairNE => ∃ x y : K, x ≠ y

/-- The first-order theory of fields, as a theory over the language of rings -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/ModelTheory/Basic/Variantb89cfc54dc6d2400443713d8e618fe1a945fa7b2a0e9f1369829f29d9753897d.lean#L68).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc371125e17f87a73b61f69570dc6bf475a6567` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
