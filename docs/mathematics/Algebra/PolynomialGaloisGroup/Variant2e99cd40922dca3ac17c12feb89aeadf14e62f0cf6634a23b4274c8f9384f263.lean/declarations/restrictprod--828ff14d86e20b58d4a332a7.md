# restrictProd

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:598cd8bfe28aa818a2cc5cecfd76035e45797ae446bba95b63e83ade94a30027",
  "kind": "def",
  "lexical_name": "restrictProd",
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
  "slug": "restrictprod--828ff14d86e20b58d4a332a7",
  "source": {
    "blob": "18c8fd48b769535f38b53ab93bef768c6424f00b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 256,
    "line": 253,
    "path": "GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:828ff14d86e20b58d4a332a7132549324e3219507456397dab9cf1529abb6cdd",
  "verification": {
    "reference": "docs/verification/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:598cd8bfe28aa818a2cc5cecfd76035e45797ae446bba95b63e83ade94a30027`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 253–256.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def restrictProd : (p * q).Gal →* p.Gal × q.Gal :=
  MonoidHom.prod (restrictDvd (dvd_mul_right p q)) (restrictDvd (dvd_mul_left q p))

/-- `Polynomial.Gal.restrictProd` is actually a subgroup embedding. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/PolynomialGaloisGroup/Variant2e99cd40922dca3ac17c12feb89aeadf14e62f0cf6634a23b4274c8f9384f263.lean#L253).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18c8fd48b769535f38b53ab93bef768c6424f00b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
