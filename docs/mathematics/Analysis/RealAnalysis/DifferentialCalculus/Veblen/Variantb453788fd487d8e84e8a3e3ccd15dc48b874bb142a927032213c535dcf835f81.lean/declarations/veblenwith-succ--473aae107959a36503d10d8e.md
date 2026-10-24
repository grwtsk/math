# veblenWith_succ

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f6511d21-34e3-eae1-9dbf-d7232ab92fa0",
  "kind": "theorem",
  "lexical_name": "veblenWith_succ",
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
  "slug": "veblenwith-succ--473aae107959a36503d10d8e",
  "source": {
    "blob": "c9d25e94eda7b4a878bf7a6a425bd0e30d3515fd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 103,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantb453788fd487d8e84e8a3e3ccd15dc48b874bb142a927032213c535dcf835f81.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:473aae107959a36503d10d8e6457f08a9a49bda27b3f83be49bca7c97f7e5b14",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantb453788fd487d8e84e8a3e3ccd15dc48b874bb142a927032213c535dcf835f81.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6511d21-34e3-eae1-9dbf-d7232ab92fa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem veblenWith_succ (o : Ordinal) : veblenWith f (succ o) = deriv (veblenWith f o) := by
  rw [deriv_eq_enumOrd (hf.veblenWith o), veblenWith_of_ne_zero f (succ_ne_zero _),
    derivFamily_eq_enumOrd]
  · apply congr_arg
    ext a
    rw [Set.mem_iInter]
    use fun ha ↦ ha ⟨o, lt_succ o⟩
    rintro (ha : _ = _) ⟨b, hb : b < _⟩
    obtain rfl | hb := lt_succ_iff_eq_or_lt.1 hb
    · rw [Function.mem_fixedPoints_iff, ha]
    · rw [← ha]
      exact veblenWith_veblenWith_of_lt hf hb _
  · exact fun o ↦ hf.veblenWith o.1

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantb453788fd487d8e84e8a3e3ccd15dc48b874bb142a927032213c535dcf835f81.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Veblen/Variantb453788fd487d8e84e8a3e3ccd15dc48b874bb142a927032213c535dcf835f81.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9d25e94eda7b4a878bf7a6a425bd0e30d3515fd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
