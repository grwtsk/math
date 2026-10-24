# inertia_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "623df194ae50aa279004c825509480ec6a87254c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 539,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c5/c57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ed685b81-11c7-4167-4d86-2246c4bc25b7",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ee101542-43a8-5b25-4fe7-3537a26505e7",
  "kind": "theorem",
  "lexical_name": "inertia_quotient",
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
  "slug": "inertia-quotient--4f63133f462c1407e0f12c39",
  "source": {
    "blob": "623df194ae50aa279004c825509480ec6a87254c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 553,
    "line": 539,
    "path": "GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f63133f462c1407e0f12c3988d34d99e97215f10059f643ac76c3454b483226",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ee101542-43a8-5b25-4fe7-3537a26505e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–553.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem inertia_quotient : p.inertia (G ⧸ H) = (q.inertia G).map (QuotientGroup.mk' H) :=
  .symm <| map_inertia_of_surjective (QuotientGroup.mk' H) H p q (QuotientGroup.mk'_surjective H)
    (QuotientGroup.ker_mk' H).ge (by simp [algebraMap.coe_smul'])

end Ideal

namespace IsFractionRing

variable (G A B K L : Type*) [Group G] [CommRing A] [CommRing B] [Algebra A B] [Field K] [Field L]
  [Algebra K L] [Algebra A K] [Algebra B L] [Algebra A L] [IsFractionRing A K] [IsFractionRing B L]
  [IsScalarTower A K L] [IsScalarTower A B L] [MulSemiringAction G B] [MulSemiringAction G L]
  [SMulDistribClass G B L] [hAB : Algebra.IsInvariant A B G] [SMulCommClass G A B]

/-- If `G` acts on `B/A` with `A` as the fixed subring, then `G` also acts on `L/K` with `K` as
the fixed subfield, where `K` and `L` are the fraction fields of `A` and `B` respectively. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variantc57741c8a44da5821c0448d33f768b04e6aeb534794c91b556155a151d20536e.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `623df194ae50aa279004c825509480ec6a87254c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
