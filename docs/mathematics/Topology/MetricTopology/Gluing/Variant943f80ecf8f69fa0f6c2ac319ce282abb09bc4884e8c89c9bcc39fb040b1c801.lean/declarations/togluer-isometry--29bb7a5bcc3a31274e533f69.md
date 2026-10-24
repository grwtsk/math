# toGlueR_isometry

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:838d12d9-747b-b7e3-b30f-be05187a4a69",
  "kind": "theorem",
  "lexical_name": "toGlueR_isometry",
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
  "slug": "togluer-isometry--29bb7a5bcc3a31274e533f69",
  "source": {
    "blob": "4fa15e7207538ae55fdd3880b48e02d4ff055608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 548,
    "line": 520,
    "path": "GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:29bb7a5bcc3a31274e533f69f1183e19885c06730af46c4b8aee8412e78964cc",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:838d12d9-747b-b7e3-b30f-be05187a4a69`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–548.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
theorem toGlueR_isometry (hΦ : Isometry Φ) (hΨ : Isometry Ψ) : Isometry (toGlueR hΦ hΨ) :=
  Isometry.of_dist_eq fun _ _ => rfl

end Gluing --section

section InductiveLimit

/-!
### Inductive limit of metric spaces

In this section, we define the inductive limit of

```
     f 0        f 1        f 2        f 3
X 0 -----> X 1 -----> X 2 -----> X 3 -----> ...
```

where the `X n` are metric spaces and f n isometric embeddings. We do it by defining a premetric
space structure on `Σ n, X n`, where the predistance `dist x y` is obtained by pushing `x` and `y`
in a common `X k` using composition by the `f n`, and taking the distance there. This does not
depend on the choice of `k` as the `f n` are isometries. The metric space associated to this
premetric space is the desired inductive limit.
-/

open Nat

variable {X : ℕ → Type u} [∀ n, MetricSpace (X n)] {f : ∀ n, X n → X (n + 1)}

/-- Predistance on the disjoint union `Σ n, X n`. -/
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/Gluing/Variant943f80ecf8f69fa0f6c2ac319ce282abb09bc4884e8c89c9bcc39fb040b1c801.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4fa15e7207538ae55fdd3880b48e02d4ff055608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
