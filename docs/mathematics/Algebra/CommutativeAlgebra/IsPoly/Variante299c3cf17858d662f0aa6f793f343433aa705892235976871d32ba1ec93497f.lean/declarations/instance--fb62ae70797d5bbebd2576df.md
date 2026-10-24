# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:40582341abd3ea766ba82b4b729519bc53aff3011d30ac16dee6168b58eb1842",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fb62ae70797d5bbebd2576df",
  "source": {
    "blob": "e54d307d77513d6f27f500b7ed5942dc677e13a5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 329,
    "line": 327,
    "path": "GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fb62ae70797d5bbebd2576df39eb8259b59f38664f838dcea6f85e7c3cb33c20",
  "verification": {
    "reference": "docs/verification/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:40582341abd3ea766ba82b4b729519bc53aff3011d30ac16dee6168b58eb1842`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 327–329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance [Fact p.Prime] : Inhabited (IsPoly₂ p (fun _ _ => (· + ·))) :=
  ⟨addIsPoly₂⟩

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/CommutativeAlgebra/IsPoly/Variante299c3cf17858d662f0aa6f793f343433aa705892235976871d32ba1ec93497f.lean#L327).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e54d307d77513d6f27f500b7ed5942dc677e13a5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
