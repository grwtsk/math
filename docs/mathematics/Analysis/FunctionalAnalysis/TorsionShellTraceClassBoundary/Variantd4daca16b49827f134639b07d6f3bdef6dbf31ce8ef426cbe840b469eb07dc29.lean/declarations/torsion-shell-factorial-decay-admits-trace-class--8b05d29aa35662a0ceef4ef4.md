# torsion_shell_factorial_decay_admits_trace_class

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "130eb860889e69015485de56c66ebafeebd47f1c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 169,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d4/d4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9d01b790-8c7b-149f-8398-c3df06d99749",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:81c058d2-00ae-0865-13b3-a2b3b97e5d52",
  "kind": "theorem",
  "lexical_name": "torsion_shell_factorial_decay_admits_trace_class",
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
  "slug": "torsion-shell-factorial-decay-admits-trace-class--8b05d29aa35662a0ceef4ef4",
  "source": {
    "blob": "130eb860889e69015485de56c66ebafeebd47f1c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 169,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b05d29aa35662a0ceef4ef46bc93ac912be322b7fd8255c11ad5e4f5d3ff9df",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:81c058d2-00ae-0865-13b3-a2b3b97e5d52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 169–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem torsion_shell_factorial_decay_admits_trace_class
    (boundary : TorsionShellTraceClassBoundary)
    (hOrdered : boundary.torsionShellsOrdered = true)
    (hFinite : boundary.finiteRankShells = true)
    (hDecay : boundary.factorialDecayDeclared = true)
    (hGrowth : boundary.shellGrowthControlled = true)
    (hSummable : boundary.traceNormSummable = true)
    (hConnes : boundary.connesPositiveBoundaryChecked = true)
    (hTao : boundary.taoHeatflowNegativeBoundaryChecked = true)
    (hRouted : boundary.everyShellBoundaryRouted = true)
    (hNoResidue : boundary.noUnpairedShellResidue = true) :
    boundary.traceClassAdmitted = true :=
  boundary.traceClassAdmitted_of_summable_shells
    hOrdered hFinite hDecay hGrowth hSummable hConnes hTao hRouted hNoResidue

/-- Ordering torsion alone does not admit trace class. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/TorsionShellTraceClassBoundary/Variantd4daca16b49827f134639b07d6f3bdef6dbf31ce8ef426cbe840b469eb07dc29.lean#L169).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `130eb860889e69015485de56c66ebafeebd47f1c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
