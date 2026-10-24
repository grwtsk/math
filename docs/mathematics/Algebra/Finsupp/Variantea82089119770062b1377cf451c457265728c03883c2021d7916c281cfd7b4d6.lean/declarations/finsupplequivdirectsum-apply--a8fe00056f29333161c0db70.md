# finsuppLEquivDirectSum_apply

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:a9eee2b1-4aee-1620-ffe5-bce9105d5d68",
  "kind": "theorem",
  "lexical_name": "finsuppLEquivDirectSum_apply",
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
  "slug": "finsupplequivdirectsum-apply--a8fe00056f29333161c0db70",
  "source": {
    "blob": "1f4f07bd7ba3cc32b6b99bc9d4f9522738af6829",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 55,
    "path": "GRWTSK/Algebra/Finsupp/Variantea82089119770062b1377cf451c457265728c03883c2021d7916c281cfd7b4d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a8fe00056f29333161c0db70c4c21bbe373aaca7b32e3f21e8dfb1c4476de3ad",
  "verification": {
    "reference": "docs/verification/Algebra/Finsupp/Variantea82089119770062b1377cf451c457265728c03883c2021d7916c281cfd7b4d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:a9eee2b1-4aee-1620-ffe5-bce9105d5d68`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem finsuppLEquivDirectSum_apply (m : ι →₀ M) (i : ι) :
    finsuppLEquivDirectSum R M ι m i = m i := by
  rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Finsupp/Variantea82089119770062b1377cf451c457265728c03883c2021d7916c281cfd7b4d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Finsupp/Variantea82089119770062b1377cf451c457265728c03883c2021d7916c281cfd7b4d6.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1f4f07bd7ba3cc32b6b99bc9d4f9522738af6829` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
