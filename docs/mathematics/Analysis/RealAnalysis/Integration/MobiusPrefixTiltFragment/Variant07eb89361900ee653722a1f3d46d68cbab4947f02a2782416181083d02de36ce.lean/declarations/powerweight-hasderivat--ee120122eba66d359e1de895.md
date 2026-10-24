# powerWeight_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5433c55-3518-1cad-d682-0129d9aeedb5",
  "kind": "theorem",
  "lexical_name": "powerWeight_hasDerivAt",
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
  "slug": "powerweight-hasderivat--ee120122eba66d359e1de895",
  "source": {
    "blob": "87220d9855db4e11bdf8496af01afb67ddce65aa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 50,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant07eb89361900ee653722a1f3d46d68cbab4947f02a2782416181083d02de36ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ee120122eba66d359e1de895ec165b8fd75ced3aad5d1b9e9b51c308360b8237",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant07eb89361900ee653722a1f3d46d68cbab4947f02a2782416181083d02de36ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5433c55-3518-1cad-d682-0129d9aeedb5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–50.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem powerWeight_hasDerivAt (z : ℂ) (x : ℝ) (hx : 0 < x) :
    HasDerivAt (powerWeight z)
      ((1 / 2 - z) * powerWeight z x / (x : ℂ)) x := by
  have h := (((Real.hasDerivAt_log hx.ne').ofReal_comp.const_mul (1 / 2 - z)).cexp)
  unfold powerWeight
  convert h using 1
  rw [Complex.ofReal_inv]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant07eb89361900ee653722a1f3d46d68cbab4947f02a2782416181083d02de36ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MobiusPrefixTiltFragment/Variant07eb89361900ee653722a1f3d46d68cbab4947f02a2782416181083d02de36ce.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `87220d9855db4e11bdf8496af01afb67ddce65aa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
