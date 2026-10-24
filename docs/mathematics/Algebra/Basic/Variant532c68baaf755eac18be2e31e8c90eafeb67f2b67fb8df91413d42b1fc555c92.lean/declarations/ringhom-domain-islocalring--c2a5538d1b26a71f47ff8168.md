# RingHom.domain_isLocalRing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:75aeaf4a-496f-ac86-b2c3-488ef4d6ac69",
  "kind": "theorem",
  "lexical_name": "RingHom.domain_isLocalRing",
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
  "slug": "ringhom-domain-islocalring--c2a5538d1b26a71f47ff8168",
  "source": {
    "blob": "5a54f107356a1c65bfbc165954e1c4f8c3febbd5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 73,
    "line": 56,
    "path": "GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2a5538d1b26a71f47ff81680e2f8416bd0a16406a72a5033b1eb3bccb6c4d4a",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75aeaf4a-496f-ac86-b2c3-488ef4d6ac69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–73.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem RingHom.domain_isLocalRing [IsLocalRing S] (f : R →+* S) [IsLocalHom f] :
    IsLocalRing R where
  toNontrivial := f.domain_nontrivial
  isUnit_or_isUnit_of_add_one {a b} h := Or.imp
    (isUnit_of_map_unit f a) (isUnit_of_map_unit f b)
    (IsLocalRing.isUnit_or_isUnit_of_add_one (by rw [← map_add, h, map_one]))

end

section

open IsLocalRing

variable [CommSemiring R] [IsLocalRing R] [CommSemiring S] [IsLocalRing S]

/--
The image of the maximal ideal of the source is contained within the maximal ideal of the target.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant532c68baaf755eac18be2e31e8c90eafeb67f2b67fb8df91413d42b1fc555c92.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a54f107356a1c65bfbc165954e1c4f8c3febbd5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
