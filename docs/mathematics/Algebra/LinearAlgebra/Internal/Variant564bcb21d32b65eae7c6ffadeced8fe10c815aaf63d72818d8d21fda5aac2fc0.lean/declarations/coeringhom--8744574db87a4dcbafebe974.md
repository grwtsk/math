# coeRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:37bcd0003bf3a7fc6eb3764197ca9d7967ca552aca72ed0c78e39bdc90175c87",
  "kind": "def",
  "lexical_name": "coeRingHom",
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
  "slug": "coeringhom--8744574db87a4dcbafebe974",
  "source": {
    "blob": "22b0a848e72b70693b308d8cfbc1af40e226d5a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 157,
    "line": 152,
    "path": "GRWTSK/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8744574db87a4dcbafebe974874eb2b53b6a861c962abfbe03925460145a701b",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:37bcd0003bf3a7fc6eb3764197ca9d7967ca552aca72ed0c78e39bdc90175c87`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–157.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def coeRingHom [AddMonoid ι] [SetLike.GradedMonoid A] : (⨁ i, A i) →+* R :=
  DirectSum.toSemiring (fun i => AddSubmonoidClass.subtype (A i)) rfl fun _ _ => rfl
#align direct_sum.coe_ring_hom DirectSum.coeRingHom

/-- The canonical ring isomorphism between `⨁ i, A i` and `R`-/
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Internal/Variant564bcb21d32b65eae7c6ffadeced8fe10c815aaf63d72818d8d21fda5aac2fc0.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `22b0a848e72b70693b308d8cfbc1af40e226d5a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
