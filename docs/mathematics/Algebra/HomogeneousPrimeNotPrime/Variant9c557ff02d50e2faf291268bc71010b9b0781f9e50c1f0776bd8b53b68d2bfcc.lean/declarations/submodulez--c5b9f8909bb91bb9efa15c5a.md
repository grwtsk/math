# submoduleZ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:07c964d8a452cfc16697991a104f6e5eff1fbe875e2b6b143b8df048698acf0b",
  "kind": "def",
  "lexical_name": "submoduleZ",
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
  "slug": "submodulez--c5b9f8909bb91bb9efa15c5a",
  "source": {
    "blob": "cf1c2387ba7aff8ee6dcf29a3506f95167eedb9e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 55,
    "path": "GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c5b9f8909bb91bb9efa15c5a4e33e42e29412ac1e6b7b21ec66cb35cb9c74e9a",
  "verification": {
    "reference": "docs/verification/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:07c964d8a452cfc16697991a104f6e5eff1fbe875e2b6b143b8df048698acf0b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def submoduleZ : Submodule R (R × R) where
  carrier := {zz | zz.1 = zz.2}
  zero_mem' := rfl
  add_mem' := @fun _ _ ha hb => congr_arg₂ (· + ·) ha hb
  smul_mem' a _ hb := congr_arg (a * ·) hb

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/HomogeneousPrimeNotPrime/Variant9c557ff02d50e2faf291268bc71010b9b0781f9e50c1f0776bd8b53b68d2bfcc.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf1c2387ba7aff8ee6dcf29a3506f95167eedb9e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
