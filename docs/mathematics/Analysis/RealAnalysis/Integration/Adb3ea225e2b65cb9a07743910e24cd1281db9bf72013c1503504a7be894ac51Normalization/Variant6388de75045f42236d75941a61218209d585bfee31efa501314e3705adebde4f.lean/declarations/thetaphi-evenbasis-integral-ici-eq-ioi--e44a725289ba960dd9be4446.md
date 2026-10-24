# thetaPhi_evenBasis_integral_Ici_eq_Ioi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:54787d3a-748f-6570-1755-faefc7334342",
  "kind": "theorem",
  "lexical_name": "thetaPhi_evenBasis_integral_Ici_eq_Ioi",
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
  "slug": "thetaphi-evenbasis-integral-ici-eq-ioi--e44a725289ba960dd9be4446",
  "source": {
    "blob": "fdb91dcd5e5c0a443c53317664e7d1cb81838dfa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 32,
    "line": 26,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e44a725289ba960dd9be44462211dd55172d1719fc0eb13c631692164612eb0d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:54787d3a-748f-6570-1755-faefc7334342`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–32.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem thetaPhi_evenBasis_integral_Ici_eq_Ioi (n : ℕ) :
    (∫ t in Ici (0 : ℝ), thetaPhi t * evenBasis n t) =
      ∫ t in Ioi (0 : ℝ), thetaPhi t * evenBasis n t :=
  integral_Ici_eq_integral_Ioi

/-- Scratch normalization helper: the actual-xi derivative identity remains
an explicit hypothesis here, to be supplied by a proved source theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Adb3ea225e2b65cb9a07743910e24cd1281db9bf72013c1503504a7be894ac51Normalization/Variant6388de75045f42236d75941a61218209d585bfee31efa501314e3705adebde4f.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fdb91dcd5e5c0a443c53317664e7d1cb81838dfa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
