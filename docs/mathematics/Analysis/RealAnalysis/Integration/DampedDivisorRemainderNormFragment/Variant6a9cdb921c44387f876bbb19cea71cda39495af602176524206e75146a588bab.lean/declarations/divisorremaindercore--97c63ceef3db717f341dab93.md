# divisorRemainderCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a046dabeffc8c3169d32318e5d57dc31143d1599955e0937cf634b995664d652",
  "kind": "def",
  "lexical_name": "divisorRemainderCore",
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
  "slug": "divisorremaindercore--97c63ceef3db717f341dab93",
  "source": {
    "blob": "79ba7d6c1b07a917c3d25bdb4b7e8de61a1a29c7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 15,
    "line": 10,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97c63ceef3db717f341dab935c3dd6844ef6744f9bcc558963a56975c193d8a4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a046dabeffc8c3169d32318e5d57dc31143d1599955e0937cf634b995664d652`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 10–15.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def divisorRemainderCore (ε Y u : ℝ) : ℂ :=
  (Icc (0 : ℝ) (Real.log Y)).indicator
    (fun u : ℝ => (Real.exp (-u / 2) : ℂ) *
      (((∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, dampedDivisorCoefficient ε n) - 1 -
        ε * ∑ n ∈ Finset.Icc 1 ⌊Real.exp u⌋₊, ArithmeticFunction.vonMangoldt n : ℝ) : ℂ)) u

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/DampedDivisorRemainderNormFragment/Variant6a9cdb921c44387f876bbb19cea71cda39495af602176524206e75146a588bab.lean#L10).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79ba7d6c1b07a917c3d25bdb4b7e8de61a1a29c7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
