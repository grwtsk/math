# Subtype.orderIsoOfNat

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bf5f7f8d20e7303e68badfdf2e1a87a0e5790e145840e290cb621eb40ea483f8",
  "kind": "def",
  "lexical_name": "Subtype.orderIsoOfNat",
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
  "slug": "subtype-orderisoofnat--653684b959d3ce5f5ecf3d5b",
  "source": {
    "blob": "c0aa729a63612b8d577bb05dfc5c1bb6966e2524",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 117,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:653684b959d3ce5f5ecf3d5b4041fb0dc19988ee87be4e9377af88662e1e8007",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bf5f7f8d20e7303e68badfdf2e1a87a0e5790e145840e290cb621eb40ea483f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 117–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def Subtype.orderIsoOfNat : ℕ ≃o s := by
  classical
  exact
    RelIso.ofSurjective
      (RelEmbedding.orderEmbeddingOfLTEmbedding
        (RelEmbedding.natLT (Nat.Subtype.ofNat s) fun n => Nat.Subtype.lt_succ_self _))
      Nat.Subtype.ofNat_surjective

variable {s}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/MathematicalLogic/OrderIsoNat/Variant20e9e9b4cdad73989290be38f4988104b8c7b585feb6ec190cc39b5353e7f0db.lean#L117).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c0aa729a63612b8d577bb05dfc5c1bb6966e2524` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
