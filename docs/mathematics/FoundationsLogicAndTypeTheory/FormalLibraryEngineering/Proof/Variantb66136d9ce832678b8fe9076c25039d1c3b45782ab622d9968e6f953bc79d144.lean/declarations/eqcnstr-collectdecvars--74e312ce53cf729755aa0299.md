# EqCnstr.collectDecVars

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c21b28b04a8726628c614c37e19d383cbb97d203d56b96ef5f301643d69dc5e6",
  "kind": "def",
  "lexical_name": "EqCnstr.collectDecVars",
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
  "slug": "eqcnstr-collectdecvars--74e312ce53cf729755aa0299",
  "source": {
    "blob": "cf84cd10edc5ac314dcbe6f644a88942bae39c94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 636,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:74e312ce53cf729755aa0299611e11629b68d20dea12e7315f9e6888f84a3968",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c21b28b04a8726628c614c37e19d383cbb97d203d56b96ef5f301643d69dc5e6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 636–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def EqCnstr.collectDecVars (c' : EqCnstr) : CollectDecVarsM Unit := do unless (← alreadyVisited c') do
  match c'.h with
  | .core0 .. | .core .. | .defn .. | .defnNat ..
  | .defnCommRing .. | .defnNatCommRing .. | .coreToInt .. => return () -- Equalities coming from the core never contain cutsat decision variables
  | .commRingNorm c .. | .reorder c | .norm c | .divCoeffs c | .div _ _ c | .mod _ _ c => c.collectDecVars
  | .ofZeroDvd c => c.collectDecVars
  | .subst _ c₁ c₂ | .ofLeGe c₁ c₂ => c₁.collectDecVars; c₂.collectDecVars
  | .mul _ cs => cs.forM fun (_, _, c) => c.collectDecVars
  | .pow _ ca? _ cb? => ca?.forM (·.collectDecVars); cb?.forM (·.collectDecVars)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Proof/Variantb66136d9ce832678b8fe9076c25039d1c3b45782ab622d9968e6f953bc79d144.lean#L636).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cf84cd10edc5ac314dcbe6f644a88942bae39c94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
