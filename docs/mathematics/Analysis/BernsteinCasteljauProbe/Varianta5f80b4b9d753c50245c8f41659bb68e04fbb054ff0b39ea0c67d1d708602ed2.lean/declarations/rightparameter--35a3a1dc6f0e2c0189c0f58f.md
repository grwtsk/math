# rightParameter

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40773e577f9742e836978f2515e5fffe83f53b99ec1d4845d567974c5b6fc459",
  "kind": "def",
  "lexical_name": "rightParameter",
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
  "slug": "rightparameter--35a3a1dc6f0e2c0189c0f58f",
  "source": {
    "blob": "daa3620993e27109bf4addd4389bd9de4a9dcf9b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 438,
    "line": 427,
    "path": "GRWTSK/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:35a3a1dc6f0e2c0189c0f58f8e2231884996d604f1f4bea480c17cd83c3526d4",
  "verification": {
    "reference": "docs/verification/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40773e577f9742e836978f2515e5fffe83f53b99ec1d4845d567974c5b6fc459`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 427–438.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rightParameter (tau t : UnitInterval) : UnitInterval :=
  ⟨tau.1 + (1 - tau.1) * t.1,
    by
      have h : 0 ≤ (1 - tau.1) * t.1 :=
        mul_nonneg (sub_nonneg.mpr tau.2.2) t.2.1
      nlinarith [tau.2.1],
    by
      have h : 0 ≤ (1 - tau.1) * (1 - t.1) :=
        mul_nonneg (sub_nonneg.mpr tau.2.2)
          (sub_nonneg.mpr t.2.2)
      nlinarith⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/BernsteinCasteljauProbe/Varianta5f80b4b9d753c50245c8f41659bb68e04fbb054ff0b39ea0c67d1d708602ed2.lean#L427).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `daa3620993e27109bf4addd4389bd9de4a9dcf9b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
