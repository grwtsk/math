# ExSum.evalIntCast

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:af2e61d31a42a84a14ecd208f70ccaa5ada276bf19387d5a2ce7a13b8e8bcae3",
  "kind": "def",
  "lexical_name": "ExSum.evalIntCast",
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
  "slug": "exsum-evalintcast--00aced231bc2afd218ad0b3b",
  "source": {
    "blob": "5d23c7fb20774850f2005a1a966e6e56b601f87a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 310,
    "path": "GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:00aced231bc2afd218ad0b3b5c31bbe584e716aea252b554405f3d35767b3e8d",
  "verification": {
    "reference": "docs/verification/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:af2e61d31a42a84a14ecd208f70ccaa5ada276bf19387d5a2ce7a13b8e8bcae3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 310–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def ExSum.evalIntCast {a : Q(ℤ)} (rα : Q(CommRing $α))
    (va : ExSum sβ a) :
    AtomM (Result (ExSum sα) q($a)) :=
  match va with
  | .zero => do
    assumeInstancesCommute
    pure ⟨_, .zero, q(intCast_zero)⟩
  | .add va₁ va₂ => do
    let ⟨_, vb₁, pb₁⟩ ← ExProd.evalIntCast rα va₁
    let ⟨_, vb₂, pb₂⟩ ← ExSum.evalIntCast rα va₂
    assumeInstancesCommute
    pure ⟨_, .add vb₁ vb₂, (q(intCast_add $pb₁ $pb₂))⟩

end


mutual

/-- Converts `ExBase sα` to `ExBase sβ`, assuming `sα` and `sβ` are defeq. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/Basic/Variant9ccfc3654c73332c112845a19cf94bfd17752215b526eadb702b5c8e02cb5cea.lean#L310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d23c7fb20774850f2005a1a966e6e56b601f87a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
