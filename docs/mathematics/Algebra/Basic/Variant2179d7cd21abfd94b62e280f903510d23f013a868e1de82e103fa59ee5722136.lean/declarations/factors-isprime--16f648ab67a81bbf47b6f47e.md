# Factors.isPrime

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b003bbd9ac029130697e8487e3c7d59cd44d5a0090ab7fc629082fe454bb0f61",
  "kind": "instance",
  "lexical_name": "Factors.isPrime",
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
  "slug": "factors-isprime--16f648ab67a81bbf47b6f47e",
  "source": {
    "blob": "83b7ec0fd879c386ae3d6e7aedb74acd0b899622",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 529,
    "line": 525,
    "path": "GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:16f648ab67a81bbf47b6f47e9240007d6d9cd926d4f77911ed83abf775cbb3fd",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b003bbd9ac029130697e8487e3c7d59cd44d5a0090ab7fc629082fe454bb0f61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 525–529.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance Factors.isPrime (P : (factors (map (algebraMap R S) p)).toFinset) :
    IsPrime (P : Ideal S) :=
  Ideal.isPrime_of_prime (prime_of_factor _ (Multiset.mem_toFinset.mp P.2))

@[deprecated "Use results of RingTheory.RamificationInertia.Basic" (since := "2026-07-01")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant2179d7cd21abfd94b62e280f903510d23f013a868e1de82e103fa59ee5722136.lean#L525).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83b7ec0fd879c386ae3d6e7aedb74acd0b899622` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
