# nonempty_signControlledXi

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fe7d85db-7fd5-fc90-d8da-144fb123ff4f",
  "kind": "theorem",
  "lexical_name": "nonempty_signControlledXi",
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
  "slug": "nonempty-signcontrolledxi--c6414a61c69b9c4c3f1ff570",
  "source": {
    "blob": "1b133e9d19caf02a52f34f18607ebfe291eaf3f4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 174,
    "line": 146,
    "path": "GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6414a61c69b9c4c3f1ff570e3b130085d4913104c0e2f9f95c71f41b2340bd2",
  "verification": {
    "reference": "docs/verification/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fe7d85db-7fd5-fc90-d8da-144fb123ff4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–174.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_signControlledXi
    (R : RealRescalingInterface E F)
    (v : OddSignRow E)
    (P : TracePolarizationData E) :
    Nonempty (SignControlledXi E v) := by
  obtain ⟨X, _⟩ := exists_signControlledXi E F R v P
  exact ⟨X⟩


/-!
## Canonical maximal-real-subfield instantiation

For a Galois CM number field, Mathlib's maximal real subfield \`E⁺\` is
quadratic-fixed by the canonical complex conjugation.  We order its rational
complex embeddings, lift each one to \`E\), and use Galois normality to express
the lift relative to the fixed base complex embedding.  Two rational
automorphisms of \`E\` agreeing on \`E⁺\` differ by an \`E⁺\`-automorphism;
the latter group has exactly two elements, identity and complex conjugation.

This supplies the previously abstract \`RealRescalingInterface\` canonically
from \`E⁺\`.  No integral lattice, Riemann criterion, or four-factor
algebraicity theorem is used here.
-/

section CanonicalMaximalRealSubfield

local notation "E⁺" => NumberField.maximalRealSubfield E

/-- The canonical inclusion of the maximal totally real subfield. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/AlgebraicGeometry/Hodge/CMRealRescaling.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/AlgebraicGeometry/Hodge/CMRealRescaling.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1b133e9d19caf02a52f34f18607ebfe291eaf3f4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
