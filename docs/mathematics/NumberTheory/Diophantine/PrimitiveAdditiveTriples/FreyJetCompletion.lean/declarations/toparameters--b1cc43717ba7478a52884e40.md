# toParameters

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:adb10e4c7a17277fa9538910d9c46e6b98860f4d7e85702a044e97d085e71028",
  "kind": "def",
  "lexical_name": "toParameters",
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
  "slug": "toparameters--b1cc43717ba7478a52884e40",
  "source": {
    "blob": "211c963917049ac0e992864408ad1b56ff11b1b0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 119,
    "line": 105,
    "path": "GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b1cc43717ba7478a52884e40bfb73812b2b5465a1beab8b0688c9f6ad14a25f0",
  "verification": {
    "reference": "docs/verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:adb10e4c7a17277fa9538910d9c46e6b98860f4d7e85702a044e97d085e71028`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 105–119.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toParameters (a b r j : R)
    (hr : r * (r - a) * (r + b) = 0) (hj : derivative a b r * j = 1) :
    Limit a b r →ₐ[R] FreyParameterSeries.Limit R where
  toFun u := ⟨fun N => algebraEquiv a b r j hr hj N (u.val N), by
    intro M N hMN
    change parameterTruncate R M N hMN (toParameter a b r j hr hj N (u.val N)) =
      toParameter a b r j hr hj M (u.val M)
    rw [← toParameter_truncate a b r j hr hj M N hMN, u.property M N hMN]⟩
  map_one' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_one
  map_mul' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_mul _ _
  map_zero' := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_zero
  map_add' u v := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).map_add _ _
  commutes' c := by apply Subtype.ext; funext N; exact (algebraEquiv a b r j hr hj N).commutes c

/-- Invert the same finite maps. Coherence uses the proved inverse-map square. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Diophantine/PrimitiveAdditiveTriples/FreyJetCompletion.lean#L105).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `211c963917049ac0e992864408ad1b56ff11b1b0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
