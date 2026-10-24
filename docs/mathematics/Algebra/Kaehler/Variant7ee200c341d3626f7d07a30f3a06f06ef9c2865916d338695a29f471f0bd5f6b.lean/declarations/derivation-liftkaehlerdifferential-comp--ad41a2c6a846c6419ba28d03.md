# Derivation.liftKaehlerDifferential_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dae74ee7-b357-dd35-f777-24f64f9a73cc",
  "kind": "theorem",
  "lexical_name": "Derivation.liftKaehlerDifferential_comp",
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
  "slug": "derivation-liftkaehlerdifferential-comp--ad41a2c6a846c6419ba28d03",
  "source": {
    "blob": "a4dd5e434af9d53d19da48a4a31bc630194ee4a1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 294,
    "line": 285,
    "path": "GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad41a2c6a846c6419ba28d03f8ae31d9708504404e724ca7034c61fb76027e77",
  "verification": {
    "reference": "docs/verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dae74ee7-b357-dd35-f777-24f64f9a73cc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 285–294.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Derivation.liftKaehlerDifferential_comp (D : Derivation R S M) :
    D.liftKaehlerDifferential.compDer (KaehlerDifferential.D R S) = D := by
  ext a
  dsimp [KaehlerDifferential.D_apply]
  refine (D.liftKaehlerDifferential_apply _).trans ?_
  rw [Subtype.coe_mk, map_sub, Derivation.tensorProductTo_tmul, Derivation.tensorProductTo_tmul,
    one_smul, D.map_one_eq_zero, smul_zero, sub_zero]
#align derivation.lift_kaehler_differential_comp Derivation.liftKaehlerDifferential_comp

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Kaehler/Variant7ee200c341d3626f7d07a30f3a06f06ef9c2865916d338695a29f471f0bd5f6b.lean#L285).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a4dd5e434af9d53d19da48a4a31bc630194ee4a1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
