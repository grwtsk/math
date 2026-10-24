# map_natCast'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e1d56bb5-10ab-d2e6-14b4-fcc0672c9036",
  "kind": "theorem",
  "lexical_name": "map_natCast'",
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
  "slug": "map-natcast--0fa58a5c0c038ca69e3adc49",
  "source": {
    "blob": "d46cd28af40f527bb5606bcc0de030fabbd14e7b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 108,
    "path": "GRWTSK/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0fa58a5c0c038ca69e3adc492d69752b4aaf3f51a03cf208aafc90004ce282fd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e1d56bb5-10ab-d2e6-14b4-fcc0672c9036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem map_natCast' {A} [AddMonoidWithOne A] [FunLike F A B] [AddMonoidHomClass F A B]
    (f : F) (h : f 1 = 1) :
    ∀ n : ℕ, f n = n :=
  eq_natCast' ((f : A →+ B).comp <| Nat.castAddMonoidHom _) (by simpa)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantd48dbf632786f14213d2c741341146e5aa9d38786de5178ea7fab97183167399.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d46cd28af40f527bb5606bcc0de030fabbd14e7b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
