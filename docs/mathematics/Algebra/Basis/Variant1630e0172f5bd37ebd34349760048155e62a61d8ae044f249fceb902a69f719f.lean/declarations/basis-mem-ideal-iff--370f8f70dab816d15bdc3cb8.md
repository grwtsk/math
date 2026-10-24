# Basis.mem_ideal_iff'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f1836ba8-210a-2635-2800-a53baef2237a",
  "kind": "theorem",
  "lexical_name": "Basis.mem_ideal_iff'",
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
  "slug": "basis-mem-ideal-iff--370f8f70dab816d15bdc3cb8",
  "source": {
    "blob": "c9ca5e6a3d630b930a285e65e97837e2be9cf010",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 67,
    "line": 65,
    "path": "GRWTSK/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:370f8f70dab816d15bdc3cb89117be3d6b9a82d333f1b4b6ca851112dbdfc796",
  "verification": {
    "reference": "docs/verification/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f1836ba8-210a-2635-2800-a53baef2237a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 65–67.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Basis.mem_ideal_iff' {ι R S : Type*} [Fintype ι] [CommSemiring R] [Semiring S] [Algebra R S]
    {I : Ideal S} (b : Basis ι R I) {x : S} : x ∈ I ↔ ∃ c : ι → R, x = ∑ i, c i • (b i : S) :=
  (b.map ((I.restrictScalarsEquiv R _ _).restrictScalars R).symm).mem_submodule_iff'
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basis/Variant1630e0172f5bd37ebd34349760048155e62a61d8ae044f249fceb902a69f719f.lean#L65).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c9ca5e6a3d630b930a285e65e97837e2be9cf010` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
