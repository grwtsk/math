# full_weighted_sum_eq_paired_of_gap_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2fb0feeb-7ea2-2bd5-86db-b8637a034911",
  "kind": "theorem",
  "lexical_name": "full_weighted_sum_eq_paired_of_gap_eq_zero",
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
  "slug": "full-weighted-sum-eq-paired-of-gap-eq-zero--5a6ab94d31622f2920d2d4e3",
  "source": {
    "blob": "35bf67032adde4213817968469a2fc03d71c3da4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 198,
    "path": "GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5a6ab94d31622f2920d2d4e3980fd7479ddd2084474417e755d405fb4d94874f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2fb0feeb-7ea2-2bd5-86db-b8637a034911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 198–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem full_weighted_sum_eq_paired_of_gap_eq_zero
    (packet : CanonicalPositiveTuringPacket family)
    (zeroGap : packet.certificate.gap = 0)
    (F : ZeroPoint → ℂ) :
    (∑ z ∈ heightHead packet.certificate.height,
        (multiplicity z : ℂ) * F z) =
      ∑ z ∈ packet.alignment.knownPoints,
        (multiplicity z : ℂ) * (F z + F (conjugated z)) := by
  classical
  let known := packet.alignment.knownPoints
  have hfull : known ∪ known.image conjugated =
      heightHead packet.certificate.height := by
    simpa only [fullKnownPoints, known] using
      packet.fullKnownPoints_eq_heightHead_of_gap_eq_zero zeroGap
  have hdisj : Disjoint known (known.image conjugated) := by
    simpa only [known] using packet.known_conjugate_disjoint
  have himage :
      (∑ z ∈ known.image conjugated, (multiplicity z : ℂ) * F z) =
        ∑ z ∈ known, (multiplicity z : ℂ) * F (conjugated z) := by
    rw [Finset.sum_image conjugated_injective.injOn]
    exact Finset.sum_congr rfl (fun z _ => by rw [multiplicity_conjugated])
  rw [← hfull, Finset.sum_union hdisj, himage,
    ← Finset.sum_add_distrib]
  apply Finset.sum_congr rfl
  intro z _
  ring

/-- A one-unit positive gap becomes two omitted units in the full head, while the
positive inventory remains incomplete. This is arithmetic control, not a zeta example. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Zeta/Riemann/CanonicalPositiveTuringFullHead.lean#L198).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35bf67032adde4213817968469a2fc03d71c3da4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
