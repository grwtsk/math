# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.RuntimeContract.Variant0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `88b3fe70487b8657be2e2d45c62a55991f1de6d3` · SHA-256 `0d78566c877d8dbc8c5216c34b7c513312c5c6519f2fcb13852d273cb7d214ed`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Folder.Basic

/-!
# Folder.Shader.RuntimeContract

Radiation role: shader-spec
BinaryMatrix spine: This module states runtime shader boundaries for BinaryMatrix-adjacent phase witnesses.
Ontology: shader.runtime_contract
Pivot role: none
Zero typology: none
Contract boundary: shader
Composite stack role: infrastructure
-/

namespace Folder
namespace Shader

structure ShaderRuntimeContract where
  shaderName : String
  computesVisibleResidualSplit : Prop
  validatesShape : Prop
  doesNotProveModularity : Prop
  doesNotProveBSD : Prop
  doesNotProveModularity_certified : doesNotProveModularity
  doesNotProveBSD_certified : doesNotProveBSD

theorem shader_does_not_prove_modularity
    (C : ShaderRuntimeContract) :
    C.doesNotProveModularity :=
  C.doesNotProveModularity_certified

theorem shader_does_not_prove_bsd
    (C : ShaderRuntimeContract) :
    C.doesNotProveBSD :=
  C.doesNotProveBSD_certified

end Shader
end Folder
```
