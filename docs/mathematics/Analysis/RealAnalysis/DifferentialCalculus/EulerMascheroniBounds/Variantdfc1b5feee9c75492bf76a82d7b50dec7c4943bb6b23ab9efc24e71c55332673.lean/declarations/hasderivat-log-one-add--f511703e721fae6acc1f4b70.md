# hasDerivAt_log_one_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:047f4d32-c39d-f617-ef5a-d465b2a9fc6d",
  "kind": "lemma",
  "lexical_name": "hasDerivAt_log_one_add",
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
  "slug": "hasderivat-log-one-add--f511703e721fae6acc1f4b70",
  "source": {
    "blob": "8963cbfea51252bc86b974039c63f91585533d1e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 267,
    "line": 263,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f511703e721fae6acc1f4b70b436d9387a05c39ebb61242a49fc5943f23e3bde",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:047f4d32-c39d-f617-ef5a-d465b2a9fc6d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 263–267.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma hasDerivAt_log_one_add (x : ℝ) (h : (0 : ℝ) < 1 + x) :
    HasDerivAt (fun u => Real.log (1 + u)) (1 / (1 + x)) x := by
  have := (Real.hasDerivAt_log h.ne').comp x ((hasDerivAt_id x).const_add 1)
  convert this using 1; ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/EulerMascheroniBounds/Variantdfc1b5feee9c75492bf76a82d7b50dec7c4943bb6b23ab9efc24e71c55332673.lean#L263).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8963cbfea51252bc86b974039c63f91585533d1e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
